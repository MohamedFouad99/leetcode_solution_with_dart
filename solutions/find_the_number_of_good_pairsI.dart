void main() {}

int numberOfPairs(List<int> nums1, List<int> nums2, int k) {
  int count = 0;
  for (var num1 in nums1) {
    for (var num2 in nums2) {
      if (num1 % (num2 * k) == 0) {
        count++;
      }
    }
  }
  return count;
}
