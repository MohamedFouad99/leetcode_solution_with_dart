void main() {
  print(canPlaceFlowers([1, 0, 0, 0, 1], 1));
}

bool canPlaceFlowers(List<int> flowerbed, int n) {
  int count = 0;
  for (int i = 0; i < flowerbed.length; i++) {
    if (flowerbed[i] == 0 &&
        (i == 0 || flowerbed[i - 1] == 0) &&
        (i == flowerbed.length - 1 || flowerbed[i + 1] == 0)) {
      flowerbed[i] = 1;
      count++;
    }
  }
  return count >= n;
}
