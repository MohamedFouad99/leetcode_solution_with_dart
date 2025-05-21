import 'dart:math';

void main() {
  List<int> nums = [1, 3, 2, 2, 5, 2, 3, 7];
  int result = findLHS(nums);
  print(result); // Output: 5
}

int findLHS(List<int> nums) {
  Map<int, int> frequencyMap = {};
  int maxLength = 0;

  // Count the frequency of each number
  for (int num in nums) {
    frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;
  }

  // Check for each number if its consecutive number exists
  for (int num in frequencyMap.keys) {
    if (frequencyMap.containsKey(num + 1)) {
      int length = frequencyMap[num]! + frequencyMap[num + 1]!;
      maxLength = max(maxLength, length);
    }
  }

  return maxLength;
}
