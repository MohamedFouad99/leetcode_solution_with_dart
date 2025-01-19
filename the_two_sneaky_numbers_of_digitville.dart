void main() {
  print(getSneakyNumbers([0, 3, 2, 1, 3, 2]));
}

List<int> getSneakyNumbers(List<int> nums) {
  List<int> result = [];
  Map<int, int> count = {};
  for (int num in nums) {
    count[num] != null ? result.add(num) : null;
    count[num] = count[num] == null ? 1 : count[num]! + 1;
  }
  return result;
}
