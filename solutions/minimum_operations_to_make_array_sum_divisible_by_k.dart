void main() {
  print(minOperations([1, 2, 3, 4, 5, 10, 11, 12, 13, 14], 5));
}

int minOperations(List<int> nums, int k) {
  int sum = 0;
  for (var elem in nums) {
    sum += elem;
  }

  int count = 0;
  while (true) {
    if (sum % k == 0) {
      return count;
    }
    sum--;
    count++;
  }
}
