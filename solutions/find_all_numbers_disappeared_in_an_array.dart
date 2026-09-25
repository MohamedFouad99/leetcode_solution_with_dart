void main() {
  List<int> nums = [4, 3, 2, 7, 8, 2, 3, 1];
  print(findDisappearedNumbers(nums));
}

List<int> findDisappearedNumbers(List<int> nums) {
  List<int> result = [];
  for (int i = 0; i < nums.length; i++) {
    int index = (nums[i] - 1) % nums.length;
    nums[index] += nums.length;
  }
  print(nums);
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] <= nums.length) {
      result.add(i + 1);
    }
  }
  return result;
}
