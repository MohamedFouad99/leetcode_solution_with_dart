void main() {
  print(minWindow("ADOBECODEBANC", "ABC"));
}
// https://leetcode.com/problems/minimum-window-substring
// 76. Minimum Window Substring

String minWindow(String s, String t) {
  if (s.length < t.length) return "";
  Map<String, int> tMap = {};
  Map<String, int> sMap = {};
  int left = 0;
  int right = 0;
  int min = s.length + 1;
  int start = 0;
  int count = 0;
  for (int i = 0; i < t.length; i++) {
    tMap[t[i]] = (tMap[t[i]] ?? 0) + 1;
  }
  //print(tMap);
  while (right < s.length) {
    if (tMap.containsKey(s[right])) {
      sMap[s[right]] = (sMap[s[right]] ?? 0) + 1;
      if (sMap[s[right]] == tMap[s[right]]) {
        count++;
      }
    }
    right++;
    while (count == tMap.length) {
      if (right - left < min) {
        min = right - left;
        start = left;
      }
      if (tMap.containsKey(s[left])) {
        if (sMap[s[left]] == tMap[s[left]]) {
          count--;
        }
        sMap[s[left]] = sMap[s[left]]! - 1;
      }
      left++;
    }
  }
  return min == s.length + 1 ? "" : s.substring(start, start + min);
}
