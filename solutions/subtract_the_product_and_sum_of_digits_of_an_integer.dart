void main() {
  print(subtractProductAndSum(234));
}

int subtractProductAndSum(int n) {
  int pro = 1;
  int sum = 0;

  while (n > 0) {
    int dig = n % 10;
    pro *= dig;
    sum += dig;
    n = (n / 10).floor();
  }

  return pro - sum;
}
