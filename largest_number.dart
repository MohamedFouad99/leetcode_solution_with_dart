void main() {
  List<int> nums = [3, 30, 34, 5, 9];
  print(largestNumber(nums));
}

String largestNumber(List<int> nums) {
  List<String> list = nums.map((e) => e.toString()).toList();
  list.sort((a, b) => (b + a).compareTo(a + b));
  if (list[0] == '0') return '0';
  return list.join();
}
