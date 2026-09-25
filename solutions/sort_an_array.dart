void main() {
  print(sortArray([5, 1, 1, 2, 0, 0]));
}

void merge(List<int> nums, int left, int mid, int right) {
  int i = left;
  int j = mid + 1;
  int k = 0;
  List<int> temp = List<int>.filled(right - left + 1, 0);

  while (i <= mid && j <= right) {
    if (nums[i] <= nums[j]) {
      temp[k] = nums[i];
      i++;
    } else {
      temp[k] = nums[j];
      j++;
    }
    k++;
  }

  while (i <= mid) {
    temp[k] = nums[i];
    i++;
    k++;
  }

  while (j <= right) {
    temp[k] = nums[j];
    j++;
    k++;
  }

  for (i = left; i <= right; i++) {
    nums[i] = temp[i - left];
  }
}

void mergeSort(List<int> nums, int left, int right) {
  if (left >= right) return;

  int mid = (left + right) ~/ 2;

  mergeSort(nums, left, mid);
  mergeSort(nums, mid + 1, right);

  merge(nums, left, mid, right);
}

List<int> sortArray(List<int> nums) {
  mergeSort(nums, 0, nums.length - 1);
  return nums;
}
