void main() {
  print(buildArray([0, 2, 1, 5, 3, 4]));
}

List<int> buildArray(List<int> nums) {
  return nums.map((e) => nums[e]).toList();
}
