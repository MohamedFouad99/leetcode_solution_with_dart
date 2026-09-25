void main() {
  print(diagonalSum([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]));
}
// https://leetcode.com/problems/matrix-diagonal-sum/
// 1572. Matrix Diagonal Sum

int diagonalSum(List<List<int>> mat) {
  int sum = 0;
  for (int i = 0; i < mat.length; i++) {
    sum += mat[i][i];
    if (i != mat.length - 1 - i) {
      sum += mat[i][mat.length - 1 - i];
    }
  }
  return sum;
}
