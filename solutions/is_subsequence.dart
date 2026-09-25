void main() {
  print(isSubsequence("abc", "ahbgdc"));
}

bool isSubsequence(String s, String t) {
  if (s.length > t.length) return false;
  if (s.isEmpty) return true;
  var j = 0;
  for (int i = 0; i < t.length; i++) {
    if (t[i] == s[j]) {
      j++;
      if (j == s.length) return true;
    }
  }
  return false;
}
