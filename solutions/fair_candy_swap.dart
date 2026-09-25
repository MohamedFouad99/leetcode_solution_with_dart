void main() {
  List<int> alice = [1, 1];
  List<int> bob = [2, 2];
  List<int> result = fairCandySwap(alice, bob);
  print(result); // Output: [1, 2]
}

List<int> fairCandySwap(List<int> aliceSizes, List<int> bobSizes) {
  int sumAlice = aliceSizes.reduce((a, b) => a + b);
  int sumBob = bobSizes.reduce((a, b) => a + b);
  int target = (sumAlice - sumBob) ~/ 2;

  Set<int> setAlice = aliceSizes.toSet();
  for (int b in bobSizes) {
    if (setAlice.contains(b + target)) {
      return [b + target, b];
    }
  }

  return [];
}
