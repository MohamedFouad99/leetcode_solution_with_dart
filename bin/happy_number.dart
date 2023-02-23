void main() {
  print(isHappy(11));
}

bool isHappy(int n) {
  Set<int> seen = {};
  while (n != 1 && !seen.contains(n)) {
    seen.add(n);
    int sum = 0;
    while (n > 0) {
      int digit = n % 10;
      sum += digit * digit;
      n ~/= 10;
    }
    n = sum;
  }
  return n == 1;
}
