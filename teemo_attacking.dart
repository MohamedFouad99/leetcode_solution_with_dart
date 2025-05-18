void main() {
  print(findPoisonedDuration([1, 4], 2));
}

int findPoisonedDuration(List<int> timeSeries, int duration) {
  int sum = 0;
  for (int i = 0; i < timeSeries.length - 1; i++) {
    sum +=
        timeSeries[i + 1] - timeSeries[i] > duration
            ? duration
            : timeSeries[i + 1] - timeSeries[i];
  }
  return sum + duration;
}
