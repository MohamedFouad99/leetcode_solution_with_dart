void main() {
  print(singleNonDuplicate([1, 1, 2]));
}

int singleNonDuplicate(List<int> nums) {
  for (int i = 0; i < nums.length; i += 2) {
    if (nums.length == 1 || i == nums.length - 1 || nums[i] != nums[i + 1]) {
      return nums[i];
    }
  }
  return -1;
}
