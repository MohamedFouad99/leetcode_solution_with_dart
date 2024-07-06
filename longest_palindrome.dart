void main() {
  String s = "babad";
  print(longestPalindrome(s));
}

int longestPalindrome(String s) {
  Set<String> se = {};
  int palindrome = 0;
  for (var char in s.split('')) {
    if (se.contains(char)) {
      se.remove(char);
      palindrome += 2;
    } else {
      se.add(char);
    }
  }
  if (se.isNotEmpty) {
    palindrome++;
  }
  return palindrome;
}
