void main() {
  print(countNegatives([
    [4, 3, 2, -1],
    [3, 2, 1, -1],
    [1, 1, -1, -2],
    [-1, -1, -2, -3]
  ]));
}

int countNegatives(List<List<int>> grid) {
  int count = 0;
  int rows = grid.length;
  int cols = grid[0].length;

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      if (grid[i][j] < 0) {
        count++;
      }
    }
  }

  return count;
}
