void main() {
  print(findLastVisitedIntegers([1, 2, -1, -1, -1]));
}

List<int> findLastVisitedIntegers(List<int> nums) {
  List<int> seen = [];
  List<int> ans = [];
  int consecutiveNegOneCount = 0;

  for (int num in nums) {
    if (num != -1) {
      // Reset consecutive count when a positive integer is found
      consecutiveNegOneCount = 0;
      // Prepend positive integer to the front of seen
      seen.insert(0, num);
    } else {
      // Increment the count of consecutive -1s
      consecutiveNegOneCount++;

      // If k (consecutiveNegOneCount) is within the bounds of seen, add the corresponding element
      if (consecutiveNegOneCount <= seen.length) {
        ans.add(seen[consecutiveNegOneCount - 1]);
      } else {
        // If k is greater than seen length, add -1 to ans
        ans.add(-1);
      }
    }
  }

  return ans;
}
