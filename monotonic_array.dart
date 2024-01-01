void main() {
  print(isMonotonic([1, 2, 2, 3]));
}

bool isMonotonic(List<int> nums) {
  return isIncrease(nums) || isDecrease(nums);
}

bool isIncrease(List<int> nums) {
  int first = nums[0];
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] >= first) {
      first = nums[i];
    } else {
      return false;
    }
  }
  return true;
}

bool isDecrease(List<int> nums) {
  int first = nums[0];
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] <= first) {
      first = nums[i];
    } else {
      return false;
    }
  }
  return true;
}
