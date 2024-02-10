void main() {
  print(countSubstrings("aaa"));
}

int countSubstrings(String s) {
  int counter = 0;
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j < s.length + 1; j++) {
      // print(
      //   s.substring(i, j),
      //);
      if (isPalindrome(s.substring(i, j))) {
        counter++;
      }
    }
  }
  return counter;
}

bool isPalindrome(String s) {
  for (int i = 0, j = s.length - 1; i < j; i++, j--) {
    if (s[i] != s[j]) {
      return false;
    }
  }
  return true;
}
