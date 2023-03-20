void main() {
  merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3);
}

void merge(List<int> nums1, int m, List<int> nums2, int n) {
  for (int i = 0, zeros = m; i < n && zeros < n + m; i++, zeros++) {
    nums1[zeros] = nums2[i];
  }
  nums1.sort();
  // print(nums1);
}
