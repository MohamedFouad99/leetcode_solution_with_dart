void main() {
  print(missingNumber([3, 0, 1]));
}

int missingNumber(List<int> nums) {
  int n = nums.length;
  int expectedSum = n * (n + 1) ~/ 2;
  int actualSum = nums.reduce((a, b) => a + b);
  return expectedSum - actualSum;
}
