void main() {}
int removePalindromeSub(String s) {
  if (s == s.split('').reversed.join('')) {
    return 1;
  }
  return 2;
}
