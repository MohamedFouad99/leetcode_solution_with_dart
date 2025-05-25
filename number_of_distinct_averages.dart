void main() {
  List<int> nums = [0, 1, 3, 4, 4, 5];
  int result = distinctAverages(nums);
  print(result); // Output: 2
}

int distinctAverages(List<int> nums) {
  Set<double> set = {};
  nums.sort();
  for (int i = 0; i < nums.length / 2; i++) {
    set.add(((nums[i] + nums[nums.length - 1 - i]) / 2));
  }
  return set.length;
}
