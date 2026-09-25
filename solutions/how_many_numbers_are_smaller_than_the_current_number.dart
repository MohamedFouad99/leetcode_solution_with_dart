void main() {
  print(smallerNumbersThanCurrent([8, 1, 2, 2, 3]));
}

List<int> smallerNumbersThanCurrent(List<int> nums) {
  List<int> result = [];
  for (int i = 0; i < nums.length; i++) {
    int counter = 0;
    for (int j = 0; j < nums.length; j++) {
      if (nums[i] > nums[j]) counter++;
    }
    result.add(counter);
  }
  return result;
}
