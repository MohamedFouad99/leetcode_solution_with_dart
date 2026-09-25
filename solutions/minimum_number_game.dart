void main() {}
List<int> numberGame(List<int> nums) {
  nums.sort();
  List<int> output = List<int>.filled(nums.length, 0);
  for (int i = 0; i < nums.length; i += 2) {
    output[i] = nums[i + 1];
    output[i + 1] = nums[i];
  }
  return output;
}
