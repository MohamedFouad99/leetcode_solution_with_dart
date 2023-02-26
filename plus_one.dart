void main() {
  print(plusOne([9, 9]));
}

List<int> plusOne(List<int> digits) {
  if (digits[digits.length - 1] < 9) {
    digits[digits.length - 1]++;
    return digits;
  } else {
    BigInt concatenatedNums = BigInt.parse(digits.join(''));
    BigInt res = concatenatedNums + BigInt.one;
    List<int> list = res
        .toString()
        .split('')
        .map((String digit) => int.parse(digit))
        .toList();
    return list;
  }
}
