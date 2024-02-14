void main() {
  sortColors([2, 0, 2, 1, 1, 0]);
}

void sortColors(List<int> nums) {
  //bubble sort
  int length = nums.length;
  for (int i = 0; i < length; i++) {
    for (int j = 0; j < length - 1; j++) {
      if (nums[j] > nums[j + 1]) {
        int temp = nums[j];
        nums[j] = nums[j + 1];
        nums[j + 1] = temp;
      }
    }
  }
}
