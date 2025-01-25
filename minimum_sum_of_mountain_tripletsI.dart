void main() {
  print(minimumSum([8, 6, 1, 5, 3]));
}

int minimumSum(List<int> nums) {
  int result = -1;

  for (int i = 0; i < nums.length - 2; i++) {
    for (int j = i + 1; j < nums.length - 1; j++) {
      for (int k = j + 1; k < nums.length; k++) {
        if (nums[i] < nums[j] && nums[k] < nums[j]) {
          int currentSum = nums[i] + nums[j] + nums[k];
          if (result == -1 || currentSum < result) {
            result = currentSum;
          }
        }
      }
    }
  }

  return result;
}
