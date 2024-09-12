void main() {
  print(generate(5));
}

List<List<int>> generate(int numRows) {
  List<List<int>> result = [];

  for (int i = 0; i < numRows; i++) {
    List<int> row = [];
    for (int j = 0; j <= i; j++) {
      if (j == 0 || j == i) {
        row.add(1);
      } else {
        row.add(result[i - 1][j - 1] + result[i - 1][j]);
      }
    }
    result.add(row);
  }

  return result;
}
