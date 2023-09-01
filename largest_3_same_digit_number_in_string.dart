void main() {
  print(largestGoodInteger("6777133339"));
}

String largestGoodInteger(String num) {
  List<String> sameDigit = [];
  String result = "";
  int max = -1;
  for (int i = 1; i < num.length - 1; i++) {
    if (num[i - 1] == num[i] && num[i] == num[i + 1]) {
      String threeNumbers = num[i - 1] + num[i] + num[i + 1];
      sameDigit.add(threeNumbers);
      if (int.parse(threeNumbers) > max) {
        max = int.parse(threeNumbers);
        result = threeNumbers;
      }
    }
  }
  return result;
}
