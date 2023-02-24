void main() {
  print(divide(10, 3));
}

int divide(int dividend, int divisor) {
  if (dividend == -2147483648 && divisor == -1) {
    return 2147483647;
  } else if (dividend / divisor > 0) {
    return (dividend / divisor).floor();
  } else {
    return (dividend / divisor).ceil();
  }
}
