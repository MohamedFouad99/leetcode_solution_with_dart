void main() {
  print(minimumOperations([1, 2, 3, 4]));
}

int minimumOperations(List<int> nums) {
  int count = 0;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] % 3 != 0) {
      count++;
    }
  }

  return count;
}
