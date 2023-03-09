void main() {
  print(countDigits(1248));
}

int countDigits(int num) {
  int count = 0;
  int number = num;
  while (number > 0) {
    int lastDigit = number % 10;
    if (num % lastDigit == 0) {
      count++;
    }
    number ~/= 10;
  }
  return count;
}
