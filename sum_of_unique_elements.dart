void main() {
  print(sumOfUnique([1, 2, 3, 2]));
}

int sumOfUnique(List<int> nums) {
  int sum = 0;
  Map<int, int> numbers = {};
  for (int num in nums) {
    numbers[num] = numbers.containsKey(num) ? numbers[num]! + 1 : 1;
  }
  for (int num in nums) {
    if (numbers[num] == 1) {
      sum += num;
    }
  }
  return sum;
}
