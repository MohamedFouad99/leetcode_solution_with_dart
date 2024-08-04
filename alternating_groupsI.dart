void main() {
  print(numberOfAlternatingGroups([0, 1, 0, 0, 1]));
}

int numberOfAlternatingGroups(List<int> colors) {
  int n = colors.length;
  int count = 0;

  bool isAlternatingGroup(int a, int b, int c) {
    return (a != b) && (b != c);
  }

  for (int i = 0; i < n; i++) {
    if (isAlternatingGroup(
        colors[i], colors[(i + 1) % n], colors[(i + 2) % n])) {
      count++;
    }
  }

  return count;
}
