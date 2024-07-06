void main() {
  print(getRow(3));
}

List<int> getRow(int rowIndex) {
  List<int> result = [];
  int value = 1;

  for (int i = 0; i <= rowIndex; i++) {
    result.add(value);
    value = (value * (rowIndex - i)) ~/ (i + 1);
  }

  return result;
}
