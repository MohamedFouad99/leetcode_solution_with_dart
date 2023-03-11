void main() {
  print(majorityElement([2, 2, 1, 1, 1, 2, 2]));
}

int majorityElement(List<int> nums) {
  nums.sort();
  return nums[nums.length ~/ 2];
}
