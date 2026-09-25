void main() {
  String s = "lbg";
  String t = "g";

  print(appendCharacters(s, t));
}

int appendCharacters(String s, String t) {
  int j = 0;
  for (int i = 0; i < s.length && j < t.length; i++) {
    if (s[i] == t[j]) {
      j++;
    }
  }
  return t.length - j;
}
