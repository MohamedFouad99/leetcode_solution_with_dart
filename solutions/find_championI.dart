void main() {
  List<List<int>> grid = [
    [1, 2, 3],
    [3, 1, 2],
    [2, 3, 1]
  ];
  print(findChampion(grid));
}

int findChampion(List<List<int>> grid) {
  int n = grid.length;

  // Start with a candidate team for the champion.
  int championCandidate = 0;

  // Find the potential champion by comparing each team with the current candidate.
  for (int i = 1; i < n; i++) {
    if (grid[championCandidate][i] == 0) {
      // If the candidate is weaker than team i, update the candidate.
      championCandidate = i;
    }
  }

  // Verify if the candidate is the actual champion.
  for (int i = 0; i < n; i++) {
    if (i != championCandidate && grid[i][championCandidate] == 1) {
      // If any team is stronger than the candidate, no valid champion exists.
      return -1; // Optional: indicates no valid champion in the grid.
    }
  }

  return championCandidate;
}
