void main() {
  print(isPalindrome("A man, a plan, a canal: Panama"));
}

bool isPalindrome(String s) {
  s = s.toLowerCase();

  var validChars = "abcdefghijklmnopqrstuvwxyz1234567890";
  int front = 0;
  int back = s.length - 1;
  while (front <= back) {
    while (front < back && !validChars.contains(s[front])) {
      front++;
    }
    while (back > front && !validChars.contains(s[back])) {
      back--;
    }
    if (s[front] != s[back]) {
      return false;
    }
    front++;
    back--;
  }
  return true;
}
