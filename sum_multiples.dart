void main() {
  print(sumOfMultiples(7));
}

int sumOfMultiples(int n) {
  int sum = 0;
  for (var i = 1; i <= n; i++) {
    if (i % 3 == 0 || i % 5 == 0 || i % 7 == 0) {
      sum += i;
    }
  }
  return sum;
}
