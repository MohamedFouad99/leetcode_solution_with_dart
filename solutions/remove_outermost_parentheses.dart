void main() {
  print(removeOuterParentheses("(()())(())"));
}

String removeOuterParentheses(String s) {
  String result = "";
  int count = 0;
  for (int i = 0; i < s.length; i++) {
    if (s[i] == '(') {
      if (count > 0) {
        result += s[i];
      }
      count++;
    } else {
      count--;
      if (count > 0) {
        result += s[i];
      }
    }
  }
  return result;
}
