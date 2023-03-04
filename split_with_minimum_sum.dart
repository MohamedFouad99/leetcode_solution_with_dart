void main() {
  print(splitNum(687));
}

int splitNum(int num) {
  List<int> digits = num.toString().split('').map(int.parse).toList();
  digits.sort();
  List num1 = [];
  List num2 = [];
  for (int i = 0; i < digits.length; i++) {
    if (i % 2 == 0) {
      num1.add(digits[i]);
    } else {
      num2.add(digits[i]);
    }
  }
  int num11 = int.parse(num1.join(''));
  int num22 = int.parse(num2.join(''));
  return num11 + num22;
}
