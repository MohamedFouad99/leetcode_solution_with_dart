#!/usr/bin/env python3
"""Regenerate the auto-generated parts of README.md from the .dart files in the repo.

Runs in GitHub Actions on every push (see .github/workflows/update-readme.yml),
so the solutions table and the "in this repo" counts never go stale.
Only the Python standard library is used.
"""
import collections
import pathlib
import re
import sys
import urllib.parse
import urllib.request

ROOT = pathlib.Path(__file__).resolve().parents[2]
README = ROOT / "README.md"
INDEX_URL = "https://raw.githubusercontent.com/doocs/leetcode/main/solution/README_EN.md"

# File names that don't match their LeetCode title (typos / short names).
OVERRIDES = {
    "buddy_trings": "Buddy Strings",
    "is_palindrome": "Palindrome Number",
    "left_and_rights_sum_differences": "Left and Right Sum Differences",
    "uncommon_words": "Uncommon Words from Two Sentences",
}

DIFF_ORDER = ["Easy", "Medium", "Hard"]
DIFF_ICON = {"Easy": "🟢", "Medium": "🟡", "Hard": "🔴"}
DIFF_COLOR = {"Easy": "2ea44f", "Medium": "f0ad4e", "Hard": "d9534f"}


def norm(text):
    return re.sub(r"[^a-z0-9]", "", text.lower())


def slug(title):
    s = re.sub(r"[^a-z0-9 -]", "", title.lower())
    return re.sub(r"[ -]+", "-", s).strip("-")


def load_index():
    with urllib.request.urlopen(INDEX_URL, timeout=60) as r:
        text = r.read().decode("utf-8")
    by_title, by_num = {}, {}
    pat = re.compile(
        r"\|\s*(\d{4})\s*\|\s*\[(.+?)\]\(.*?\)\s*\|\s*(.*?)\s*\|\s*(Easy|Medium|Hard)\s*\|"
    )
    for line in text.splitlines():
        m = pat.match(line)
        if not m:
            continue
        num, title, tags, diff = m.groups()
        row = {
            "num": int(num),
            "title": title,
            "tags": [t.strip().strip("`") for t in tags.split(",") if t.strip()],
            "diff": diff,
        }
        by_title.setdefault(norm(title), row)
        by_num.setdefault(int(num), row)
    return by_title, by_num


def collect(by_title, by_num):
    solved, unknown = [], []
    for path in sorted(ROOT.glob("*.dart")):
        stem = path.stem
        m = re.match(r"^(\d+)\.", stem)
        row = None
        if m:
            row = by_num.get(int(m.group(1)))
        if row is None:
            key = norm(OVERRIDES.get(stem, stem))
            row = by_title.get(key)
        if row is None:
            unknown.append(path.name)
        else:
            solved.append({**row, "file": path.name})
    solved.sort(key=lambda r: r["num"])
    return solved, unknown


def link(file):
    return "./" + urllib.parse.quote(file)


def render_badges(solved):
    cnt = collections.Counter(r["diff"] for r in solved)
    parts = [
        f'<img src="https://img.shields.io/badge/Solutions_in_this_repo-{len(solved)}-13B9FD?style=for-the-badge&logo=dart&logoColor=white" />'
    ]
    for d in DIFF_ORDER:
        parts.append(
            f'<img src="https://img.shields.io/badge/{d}-{cnt[d]}-{DIFF_COLOR[d]}?style=flat-square" />'
        )
    return "<p align=\"center\">\n  " + "\n  ".join(parts) + "\n</p>"


def render_stats(solved):
    cnt = collections.Counter(r["diff"] for r in solved)
    tags = collections.Counter(t for r in solved for t in r["tags"])
    lines = ["| Difficulty | Solutions |", "|:--|:--:|"]
    for d in DIFF_ORDER:
        lines.append(f"| {DIFF_ICON[d]} {d} | **{cnt[d]}** |")
    lines.append(f"| **Total** | **{len(solved)}** |")
    lines.append("")
    lines.append(
        "**Top topics:** "
        + " · ".join(f"`{t}` ×{c}" for t, c in tags.most_common(10))
    )
    return "\n".join(lines)


def render_solutions(solved, unknown):
    out = []
    for d in DIFF_ORDER:
        rows = [r for r in solved if r["diff"] == d]
        if not rows:
            continue
        opened = " open" if d != "Easy" else ""
        out.append(f"<details{opened}>")
        out.append(f"<summary><b>{DIFF_ICON[d]} {d} — {len(rows)} problems</b></summary>")
        out.append("")
        out.append("| # | Problem | Solution | Topics |")
        out.append("|:--:|:--|:--:|:--|")
        for r in rows:
            out.append(
                f"| {r['num']} | [{r['title']}](https://leetcode.com/problems/{slug(r['title'])}/) "
                f"| [Dart]({link(r['file'])}) | {', '.join(r['tags'][:3])} |"
            )
        out.append("")
        out.append("</details>")
        out.append("")
    if unknown:
        out.append("<details>")
        out.append(f"<summary><b>⚪ Unmatched files — {len(unknown)}</b></summary>")
        out.append("")
        for f in unknown:
            out.append(f"- [{f}]({link(f)})")
        out.append("")
        out.append("</details>")
    return "\n".join(out).rstrip()


def replace_block(text, name, body):
    pat = re.compile(
        rf"(<!-- {name}:START -->)(.*?)(<!-- {name}:END -->)", re.DOTALL
    )
    if not pat.search(text):
        sys.exit(f"Marker {name} not found in README.md")
    return pat.sub(lambda m: f"{m.group(1)}\n{body}\n{m.group(3)}", text)


def main():
    by_title, by_num = load_index()
    solved, unknown = collect(by_title, by_num)
    text = README.read_text(encoding="utf-8")
    text = replace_block(text, "BADGES", render_badges(solved))
    text = replace_block(text, "REPO_STATS", render_stats(solved))
    text = replace_block(text, "SOLUTIONS", render_solutions(solved, unknown))
    README.write_text(text, encoding="utf-8")
    print(f"README updated: {len(solved)} matched, {len(unknown)} unmatched")
    for f in unknown:
        print(f"  unmatched: {f}")


if __name__ == "__main__":
    main()
