void main() {
  print(containsDuplicate([1, 2, 3, 1]));
}

bool containsDuplicate(List<int> nums) {
  Set<int> set = {};
  set.addAll(nums);
  return set.length != nums.length;
}
