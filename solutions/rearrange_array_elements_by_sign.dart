void main() {
  print(rearrangeArray([3, 1, -2, -5, 2, -4]));
}

List<int> rearrangeArray(List<int> nums) {
  List<int> pos = [];
  List<int> neg = [];
  List<int> ans = [];
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] > 0) {
      pos.add(nums[i]);
    } else {
      neg.add(nums[i]);
    }
  }
  for (int i = 0; i < nums.length; i++) {
    if (i % 2 == 0) {
      ans.add(pos[i ~/ 2]);
    } else {
      ans.add(neg[i ~/ 2]);
    }
  }
  return ans;
}
