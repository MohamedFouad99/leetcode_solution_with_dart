void main() {
  print(intersect([1, 2, 2, 1], [2, 2]));
}

List<int> intersect(List<int> nums1, List<int> nums2) {
  List<int> result = [];
  for (int num in nums1) {
    if (nums2.contains(num)) {
      result.add(num);
      nums2.remove(num);
    }
  }
  return result;
}
