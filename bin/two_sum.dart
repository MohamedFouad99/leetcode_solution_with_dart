void main() {
  print(twoSum([3, 3], 6));
}

List<int> twoSum(List<int> nums, int target) {
  for (var i = 0; i < nums.length - 1; i++) {
    for (var j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        return [i, j];
      }
    }
  }

  return [];
}
