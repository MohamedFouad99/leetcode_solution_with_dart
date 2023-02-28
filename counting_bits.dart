void main() {
  print(countBits(2));
}

List<int> countBits(int n) {
  return List.generate(
          n + 1,
          (index) =>
              index.toRadixString(2).toString().replaceAll('0', '').length)
      .toList();
}
