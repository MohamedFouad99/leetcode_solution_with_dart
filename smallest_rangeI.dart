void main() {
  print(smallestRangeI([1], 0));
}

int smallestRangeI(List<int> nums, int k) {
  nums.sort();
  return nums[nums.length - 1] - nums[0] > 2 * k
      ? nums[nums.length - 1] - nums[0] - 2 * k
      : 0;
}
