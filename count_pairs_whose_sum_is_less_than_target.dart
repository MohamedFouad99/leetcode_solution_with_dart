void main() {
  print(countPairs([-1, 1, 2, 3, 1], 2));
}

int countPairs(List<int> nums, int target) {
  int output = 0;
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] < target) {
        output++;
      }
    }
  }
  return output;
}
