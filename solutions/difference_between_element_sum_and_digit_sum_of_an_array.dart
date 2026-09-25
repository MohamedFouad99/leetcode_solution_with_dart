void main() {
  print(differenceOfSum([1, 15, 6, 3]));
}

int differenceOfSum(List<int> nums) {
  int elementSum = 0;
  int digitSum = 0;
  for (int num in nums) {
    elementSum += num;
    while (num > 0) {
      digitSum += num % 10;
      num ~/= 10;
    }
  }
  return (elementSum - digitSum).abs();
}
