void main() {
  rotate([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]);
}

void rotate(List<List<int>> matrix) {
  int n = matrix.length;

  for (int i = 0; i < n; i++) {
    for (int j = i; j < n; j++) {
      int temp = matrix[i][j];
      matrix[i][j] = matrix[j][i];
      matrix[j][i] = temp;
    }
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n ~/ 2; j++) {
      int temp = matrix[i][j];
      matrix[i][j] = matrix[i][n - j - 1];
      matrix[i][n - j - 1] = temp;
    }
  }
}
