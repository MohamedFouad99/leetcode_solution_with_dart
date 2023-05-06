void main() {
  print(separateDigits([13, 25, 83, 77]));
}

List<int> separateDigits(List<int> nums) {
  List<String> numbers = nums.join().split('');
  List<int> out = [];
  for (int i = 0; i < numbers.length; ++i) {
    out.add(int.parse(numbers[i]));
  }
  return out;
}
