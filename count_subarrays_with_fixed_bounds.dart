import 'dart:math';

void main() {
  print(countSubarrays([1, 3, 5, 2, 7, 5], 1, 5));
}

int countSubarrays(List<int> nums, int minK, int maxK) {
  int leftBound = -1;
  int lastMin = -1;
  int lastMax = -1;
  int count = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] >= minK && nums[i] <= maxK) {
      lastMin = (nums[i] == minK) ? i : lastMin;
      lastMax = (nums[i] == maxK) ? i : lastMax;
      count += max(0, min(lastMin, lastMax) - leftBound);
    } else {
      leftBound = i;
      lastMin = -1;
      lastMax = -1;
    }
  }
  return count;
}

 