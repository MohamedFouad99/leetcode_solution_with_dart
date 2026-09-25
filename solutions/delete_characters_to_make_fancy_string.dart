void main() {
  print(makeFancyString("leeetcode"));
}

String makeFancyString(String s) {
  StringBuffer sBuffer = StringBuffer();
  for (int i = 0; i < s.length; i++) {
    if (i >= 2 && s[i] == s[i - 1] && s[i] == s[i - 2]) continue;
    sBuffer.write(s[i]);
  }
  return sBuffer.toString();
}
