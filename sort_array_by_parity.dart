void main() {
  print(sortArrayByParity([3, 1, 2, 4]));
}

List<int> sortArrayByParity(List<int> nums) {
  int len = nums.length;
  int strt = 0;
  int end = len - 1;
  List<int> x = List.filled(len, 0);
  for (var i = 0; i < len; i++) {
    if (nums[i] % 2 == 0) {
      x[strt] = nums[i];
      strt++;
    } else {
      x[end] = nums[i];
      end--;
    }
  }
  return x;
}
