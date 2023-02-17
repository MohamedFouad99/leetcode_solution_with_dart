void main() {
  print(getConcatenation([1, 3, 2, 1]));
}

List<int> getConcatenation(List<int> nums) {
  int len = nums.length;
  for (int i = 0; i < len; i++) {
    nums.add(nums[i]);
  }
  return nums;
}
