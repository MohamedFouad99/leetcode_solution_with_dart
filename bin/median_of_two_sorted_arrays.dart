void main() {
  print(findMedianSortedArrays([1, 2], [3, 4]));
}

double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  nums1 += nums2;
  nums1.sort();
  if (nums1.length % 2 != 0) {
    return nums1[(nums1.length / 2).floor()].toDouble();
  } else {
    return (nums1[(nums1.length / 2).round()] +
            nums1[((nums1.length) / 2).round() - 1]) /
        2;
    // (nums1[(nums1.length / 2).round()].toDouble()) +
    //     (nums1[(nums1.length / 2).round() - 1].toDouble()) / 2;
  }
}
