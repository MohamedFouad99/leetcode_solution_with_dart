void main() {
  print(maximumWealth([
    [1, 2, 3],
    [3, 2, 1]
  ]));
}

int maximumWealth(List<List<int>> accounts) {
  int max = 0;
  for (int i = 0; i < accounts.length; i++) {
    int sum = 0;
    for (int j = 0; j < accounts[i].length; j++) {
      sum += accounts[i][j];
    }
    if (sum > max) {
      max = sum;
    }
  }
  return max;
}
