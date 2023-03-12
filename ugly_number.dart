void main() {
  print(isUgly(14));
}

bool isUgly(int n) {
  if (n <= 0) return false;
  List<int>nums=[2,3,5];
  for (int num in nums) {
    while (n % num == 0) {
      n = n ~/ num;
    }
  }
  return n == 1;
}
