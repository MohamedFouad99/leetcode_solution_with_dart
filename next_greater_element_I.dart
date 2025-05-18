void main() {
  List<int> nums1 = [4, 1, 2];
  List<int> nums2 = [1, 3, 4, 2];
  print(nextGreaterElement(nums1, nums2));
}

List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
  List<int> result = [];
  for (int i = 0; i < nums1.length; i++) {
    int j = nums2.indexOf(nums1[i]);
    for (int k = j + 1; k < nums2.length; k++) {
      if (nums2[k] > nums1[i]) {
        result.add(nums2[k]);
        break;
      }
    }
    if (result.length == i) {
      result.add(-1);
    }
  }
  return result;
}
