void main() {
  String s = "1001";
  print(minChanges(s));
}

//Return the minimum number of changes required to make the string s beautiful.
int minChanges(String s) {
  int count = 0;
  for (int i = 1; i < s.length; i += 2) {
    if (s[i] != s[i - 1]) count++;
  }
  return count;
}
