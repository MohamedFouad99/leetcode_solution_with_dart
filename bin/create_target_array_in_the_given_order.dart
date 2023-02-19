void main() {
  print(createTargetArray([0, 1, 2, 3, 4], [0, 1, 2, 2, 1]));
}

List<int> createTargetArray(List<int> nums, List<int> index) {
  List<int> res = [];
  for (int i = 0; i < index.length; i++) {
    res.insert(index[i], nums[i]);
  }
  return res;
}
