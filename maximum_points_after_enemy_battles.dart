void main() {
  print(maximumPoints([2], 10));
}

int maximumPoints(List<int> enemyEnergies, int currentEnergy) {
  enemyEnergies.sort();
  int points = 0;
  int i = 0, j = enemyEnergies.length - 1;
  while (i <= j) {
    if (currentEnergy >= enemyEnergies[i]) {
      currentEnergy -= enemyEnergies[i];
      points++;
    } else if (points > 0) {
      currentEnergy += enemyEnergies[j];
      j--;
    } else {
      break;
    }
  }

  return points;
}
