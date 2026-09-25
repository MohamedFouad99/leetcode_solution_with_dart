void main() {
  print(containsNearbyDuplicate([1, 2, 3, 1], 3));
}

bool containsNearbyDuplicate(List<int> nums, int k) {
  Map<int, int> map = {};

  for (int i = 0; i < nums.length; i++) {
    // Check if the number has been seen before and if the index difference is <= k
    if (map.containsKey(nums[i])) {
      if (i - map[nums[i]]! <= k) {
        return true;
      }
    }
    // Update the map with the current index of nums[i]
    map[nums[i]] = i;
  }
  return false;
}
