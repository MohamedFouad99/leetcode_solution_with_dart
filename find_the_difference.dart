void main() {
  print(findTheDifference("abcd", "abcde"));
}

String findTheDifference(String s, String t) {
  Map<String, int> mp = {};
  for (int i = 0; i < s.length; i++) {
    mp[s[i]] = (mp[s[i]] ?? 0) + 1;
  }
  for (int i = 0; i < t.length; i++) {
    mp[t[i]] = (mp[t[i]] ?? 0) - 1;
    if (mp[t[i]] == -1) {
      return t[i];
    }
  }
  return "";
}
