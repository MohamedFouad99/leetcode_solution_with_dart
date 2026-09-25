void main() {
  print(targetIndices([1, 2, 5, 2, 3], 5));
}

List<int> targetIndices(List<int> nums, int target) {
  List<int> result = [];
  nums.sort();
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      result.add(i);
    }
  }
  return result;
}
