void main() {
  int n = 2;
  List<List<int>> pick = [
    [1, 1],
    [2, 4],
    [2, 4],
    [2, 4]
  ];
  print(winningPlayerCount(n, pick));
}

/// Counts the number of winning players based on their picks.
///
/// Given the number of players `n` and their respective picks as a list of pairs,
/// this function calculates how many players have a winning configuration.
///
/// A winning player is determined based on certain criteria:
/// - Players with key 0 automatically win.
/// - Players with key 1 win if there are duplicate picks.
/// - For other players, a player wins if the count of consecutive duplicates exceeds the key value.
int winningPlayerCount(int n, List<List<int>> pick) {
  int numberOfWinners = 0;
  // Convert the list to a 2D array map with player keys and their picks
  Map<int, List<int>> result = {};
  for (var pair in pick) {
    int key = pair[0];
    int value = pair[1];

    if (!result.containsKey(key)) {
      result[key] = [];
    }
    result[key]!.add(value);
  }

  // Check for automatic win condition for key 0
  if (result.containsKey(0)) {
    numberOfWinners++;
    result.remove(0);
  }

  // Check for duplicates in picks for key 1
  if (result.containsKey(1)) {
    if (result[1]!.length != result[1]!.toSet().length) {
      numberOfWinners++;
    }
    result.remove(1);
  }

  // Evaluate other players
  for (var entry in result.entries) {
    entry.value.sort();
    int count = 0;
    for (int j = 1; j < entry.value.length; j++) {
      if (entry.value[j] == entry.value[j - 1]) {
        count = (count == 0) ? 2 : count += 1;
        if (count > entry.key) {
          numberOfWinners++;
          break;
        }
      } else {
        count = 0;
      }
    }
  }

  return numberOfWinners;
}
