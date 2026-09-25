import 'dart:math';

void main() {
  List<int> forts = [1, 0, 0, -1, 0, 0, 0, 0, 1];
  int result = captureForts(forts);
  print(result);
}

int captureForts(List<int> forts) {
  int i = 0;
  int j = 0;
  int maxE = 0;
  while (j < forts.length) {
    if (forts[j] != 0) {
      if (forts[j] == -forts[i]) {
        maxE = max(maxE, j - i - 1);
      }
      i = j;
    }
    j++;
  }
  return maxE;
}
