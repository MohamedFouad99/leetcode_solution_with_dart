void main() {
  moveZeroes([0]);
}

void moveZeroes(List<int> nums) {
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == 0) {
      nums.add(nums[i]);
      nums.remove(nums[i]);
    }
  }
  print(nums);
}
