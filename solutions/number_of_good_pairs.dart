void main() {
  print(numIdenticalPairs([1, 2, 3, 1, 1, 3]));
}

int numIdenticalPairs(List<int> nums) {
  int goodPairs = 0;
  final Map<int, int?> map = {};
  for (var i = 0; i < nums.length; i++) {
    if (map.containsKey(nums[i])) {
      goodPairs += map[nums[i]]!;
    }
    map[nums[i]] = (map[nums[i]] ?? 0) + 1;
  }
  return goodPairs;
}
