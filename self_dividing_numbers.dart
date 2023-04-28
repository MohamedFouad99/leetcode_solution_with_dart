void main() {
  print(selfDividingNumbers(47, 85));
}

List<int> selfDividingNumbers(int left, int right) {
  List<int> result = [];
  for (int num = left; num <= right; num++) {
    bool isSelfDividing = true;
    int temp = num;
    while (temp > 0) {
      int digit = temp % 10;
      if (digit == 0 || num % digit != 0) {
        isSelfDividing = false;
        break;
      }
      temp ~/= 10;
    }
    if (isSelfDividing) {
      result.add(num);
    }
  }
  return result;
}
