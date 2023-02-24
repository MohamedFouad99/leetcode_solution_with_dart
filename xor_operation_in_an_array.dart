void main() {
  print(xorOperation(5, 0));
}

int xorOperation(int n, int start) {
  List<int> list = List<int>.filled(n, 0);

  for (int i = 0; i < n; i++) {
    list[i] = start + 2 * i;
  }
  for (int i = 1; i < n; i++) {
    start = start ^ list[i];
  }

  return start;
}
