void main() {
  print(commonFactors(12, 6));
}

int commonFactors(int a, int b) {
  int minVal = (a < b) ? a : b;
  int count = 1;
  for (int i = 2; i <= minVal; i++) {
    if (a % i == 0 && b % i == 0) {
      count++;
    }
  }
  return count;
}
