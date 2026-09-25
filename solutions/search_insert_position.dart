void main() {
  print(searchInsert([2, 5], 1));
}

int searchInsert(List<int> nums, int target) {
  if (target < nums[0]) return 0;
  int start = 0;
  int end = nums.length - 1;
  int middle = ((start + end) / 2).floor();

  while (nums[middle] != target && start <= end) {
    if (target < nums[middle]) {
      end = middle - 1;
    } else {
      start = middle + 1;
    }
    middle = ((start + end) / 2).floor();
  }
  if (nums[middle] == target) {
    return middle;
  } else if (nums[middle] <= target) {
    return middle + 1;
  } else {
    return nums.length;
  }
  // for (int i = 0; i < nums.length; i++) {
  //   if (nums[i] >= target) {
  //     return i;
  //   }
  // }
  // return nums.length;
}
