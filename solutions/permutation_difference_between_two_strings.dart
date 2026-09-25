void main() {
  String s = "abc";
  String t = "bac";
  print(findPermutationDifference(s, t));
}

int findPermutationDifference(String s, String t) {
  int result = 0;
  int sum = 0;
  for (int i = 0; i < s.length; i++) {
    for (int j = 0; j < t.length; j++) {
      if (s[i] == t[j]) {
        int sindex = s.indexOf(s[i]);
        int tindex = t.indexOf(t[j]);
        sum = (sindex - tindex).abs();
        result += sum;
      }
    }
  }
  return result;
}
