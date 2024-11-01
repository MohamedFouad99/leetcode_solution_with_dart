void main() {
  print(canArrange([1, 2, 3, 4, 5, 10, 6, 7, 8, 9], 5));
}

bool canArrange(List<int> arr, int k) {
  Map<int, int> remainderFreq = {};

  for (int num in arr) {
    int remainder = num % k;
    if (remainder < 0) remainder += k;
    remainderFreq[remainder] = (remainderFreq[remainder] ?? 0) + 1;
  }

  for (int remainder in remainderFreq.keys) {
    int freq = remainderFreq[remainder]!;

    if (remainder == 0 || 2 * remainder == k) {
      if (freq % 2 != 0) return false;
    } else {
      int otherFreq = remainderFreq[k - remainder] ?? 0;
      if (freq != otherFreq) return false;
    }
  }

  return true;
}
