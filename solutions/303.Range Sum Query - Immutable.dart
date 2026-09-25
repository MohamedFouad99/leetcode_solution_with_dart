class NumArray {
  late List<int> prefix;

  NumArray(List<int> nums) {
    prefix = List.filled(nums.length + 1, 0);

    for (int i = 0; i < nums.length; i++) {
      prefix[i + 1] = prefix[i] + nums[i];
    }
  }

  int sumRange(int left, int right) {
    return prefix[right + 1] - prefix[left];
  }
}
