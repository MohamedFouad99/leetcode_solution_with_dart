void main() {
  print(coloredCells(3));
}

int coloredCells(int n) {
  //int res = 0;
  //if (n == 1) return 1;
  // else {
  //   for (int i = 1; i < n; i++) {
  //     res += 4 * i;
  //   }
  // }
  // return res + 1;
  return n == 1 ? 1 : (((n * (n - 1) / 2) * 4) + 1).toInt();
}
