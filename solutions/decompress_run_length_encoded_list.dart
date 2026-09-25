void main() {
  print(decompressRLElist([1, 2, 3, 4]));
}

List<int> decompressRLElist(List<int> nums) {
  List<int> result = [];
  for (int i = 0; i < nums.length; i += 2) {
    int freq = nums[i];
    int val = nums[i + 1];
    for (int j = 0; j < freq; j++) {
      result.add(val);
    }
  }
  return result;
}
