void main() {}

void duplicateZeros(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == 0) {
      arr.insert(i, 0);
      arr.removeLast();
      i++;
    }
  }
}
