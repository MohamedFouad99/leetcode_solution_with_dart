void main() {
  print(numberOfCuts(6));
}

int numberOfCuts(int n) {
  if (n == 1) return 0;
  if (n % 2 == 0) {
    return n ~/ 2;
  }
  return n;
}
