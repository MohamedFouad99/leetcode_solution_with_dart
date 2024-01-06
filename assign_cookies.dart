void main() {
  print(findContentChildren([1, 2], [1, 2, 3]));
}

// https://leetcode.com/problems/assign-cookies/
// 455. Assign Cookies
int findContentChildren(List<int> g, List<int> s) {
  g.sort();
  s.sort();
  int i = 0;
  int j = 0;
  while (i < g.length && j < s.length) {
    if (s[j] >= g[i]) {
      i++;
    }
    j++;
  }
  return i;
}
