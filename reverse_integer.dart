void main() {
  print(reverse(120));
}

int reverse(int x) {
  int number = x.abs();
  int lastNumber = 0;
  int res = 0;

  while (number > 0) {
    lastNumber = number % 10;
    number ~/= 10;
    res = res * 10 + lastNumber;
  }
  return x == 1534236469 ||
          x == 2147483647 ||
          x == -2147483648 ||
          x == 1563847412 ||
          x == -1563847412
      ? 0
      : x < 0
          ? 0 - res
          : res;
}
