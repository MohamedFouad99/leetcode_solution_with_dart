import 'dart:math';

void main() {
  List<List<int>> grid = [
    [9, 9, 8, 1],
    [5, 6, 2, 6],
    [8, 2, 6, 4],
    [6, 2, 2, 2]
  ];

  print(largestLocal(grid));
}

List<List<int>> largestLocal(List<List<int>> grid) {
  int n = grid.length;
  // Initialize an empty matrix of size (n-2) x (n-2)
  List<List<int>> maxLocal = List.generate(n - 2, (i) => List.filled(n - 2, 0));

  // Loop through each (n-2) x (n-2) subgrid
  for (int i = 0; i < n - 2; i++) {
    for (int j = 0; j < n - 2; j++) {
      // Find the max value in the 3x3 grid
      int maxVal = 0;
      for (int row = i; row < i + 3; row++) {
        for (int col = j; col < j + 3; col++) {
          maxVal = max(maxVal, grid[row][col]);
        }
      }
      // Set the max value in the output matrix
      maxLocal[i][j] = maxVal;
    }
  }
  return maxLocal;
}
