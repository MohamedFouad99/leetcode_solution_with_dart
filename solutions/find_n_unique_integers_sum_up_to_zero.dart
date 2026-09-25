void main() {
  print(sumZero(5));
}

// Given an integer n, return any array containing n unique integers such that they add up to 0.
List<int> sumZero(int n) {
  List<int> result = [];
  double length = n % 2 == 0 ? n / 2 + 1 : ((n / 2));
  for (int i = 1; i < length; i++) {
    result.add(i);
    result.add(-i);
  }
  if (n % 2 == 1) {
    result.add(0);
  } else {}
  return result;
}
