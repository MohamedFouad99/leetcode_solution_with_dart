void main() {
  print(findIntersectionValues([4, 3, 2, 3, 1], [2, 2, 5, 2, 3, 6]));
}

List<int> findIntersectionValues(List<int> nums1, List<int> nums2) {
  nums1.sort();
  nums2.sort();
  Set<int> set1 = nums1.toSet();
  Set<int> set2 = nums2.toSet();
  List<int> result = [0, 0];
  int count = 0;
  for (int i = 0; i < nums1.length; i++) {
    if (set2.contains(nums1[i])) {
      count++;
    }
  }
  result[0] = count;
  count = 0;
  for (int i = 0; i < nums2.length; i++) {
    if (set1.contains(nums2[i])) {
      count++;
    }
  }
  result[1] = count;
  return result;
}
