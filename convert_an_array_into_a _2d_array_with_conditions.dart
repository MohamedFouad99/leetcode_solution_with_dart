// convert_an_array_into_a _2d_array_with_conditions
//leetcode problem link: https://leetcode.com/problems/convert-an-array-into-a-2d-array-with-conditions/
void main() {
  print(findMatrix([1, 3, 4, 1, 2, 3, 1]));
}

List<List<int>> findMatrix(List<int> nums) {
  List<List<int>> ans = [];
  bool added;
  nums.forEach((n) {
    added = false;
    for (int i = 0; i < ans.length; i++) {
      if (!ans[i].contains(n)) {
        ans[i].add(n);
        added = true;
        break;
      }
    }
    if (added == false) {
      ans.add([n]);
    }
  });
  return ans;
}
