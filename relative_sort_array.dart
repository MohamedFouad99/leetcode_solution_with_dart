void main() {
  List<int> arr1 = [2, 3, 1, 3, 4, 2];
  List<int> arr2 = [3, 2, 1];

  List<int> sortedArray = relativeSortArray(arr1, arr2);
  print(sortedArray); // Output: [3, 3, 2, 2, 1, 4]
}

List<int> relativeSortArray(List<int> arr1, List<int> arr2) {
  Map<int, int> countMap = {};

  // Count occurrences of each number in arr1
  for (int num in arr1) {
    countMap[num] = (countMap[num] ?? 0) + 1;
  }

  List<int> result = [];

  // Add numbers from arr2 in the order they appear
  for (int num in arr2) {
    if (countMap.containsKey(num)) {
      result.addAll(List.filled(countMap[num]!, num));
      countMap.remove(num);
    }
  }

  // Add remaining numbers not in arr2, sorted
  List<int> remaining = countMap.keys.toList()..sort();
  for (int num in remaining) {
    result.addAll(List.filled(countMap[num]!, num));
  }

  return result;
}
