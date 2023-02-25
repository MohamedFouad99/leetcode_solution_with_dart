void main() {
  print(maxProfit([7, 1, 5, 3, 6, 4]));
}

int maxProfit(List<int> prices) {
  int min = prices[0];
  int max = 0;
  for (int i = 0; i < prices.length; i++) {
    min = prices[i] < min ? prices[i] : min;
    max = max > (prices[i] - min) ? max : (prices[i] - min);
  }
  return max;
}
