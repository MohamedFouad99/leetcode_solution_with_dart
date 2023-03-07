void main() {
  print(minimumTime([5, 10, 10], 9));
}

int minimumTime(List<int> time, int totalTrips) {
  int left = 1; // minimum possible time
  int right =
      time.reduce((a, b) => a + b) * totalTrips; // maximum possible time
  while (left < right) {
    int mid = left + (right - left) ~/ 2;
    int trips = 0;
    for (int t in time) {
      trips += (mid / t).floor();
      if (trips >= totalTrips) break;
    }
    if (trips >= totalTrips) {
      right = mid;
    } else {
      left = mid + 1;
    }
  }
  return left;
}
