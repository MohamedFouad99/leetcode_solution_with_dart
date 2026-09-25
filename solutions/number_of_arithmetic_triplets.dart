void main() {
  List<int> nums = [0, 1, 4, 6, 7, 10];
  int diff = 3;
  print(arithmeticTriplets(nums, diff));
}

int arithmeticTriplets(List<int> nums, int diff) {
  int count = 0;

  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      for (int k = j + 1; k < nums.length; k++) {
        if (nums[j] - nums[i] == diff && nums[k] - nums[j] == diff) {
          count++;
        }
      }
    }
  }

  return count;
}
