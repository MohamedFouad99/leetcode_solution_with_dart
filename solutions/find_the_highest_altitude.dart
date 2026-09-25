void main() {
  print(largestAltitude([-5, 1, 5, 0, -7]));
}

int largestAltitude(List<int> gain) {
  int highest = 0;
  int current = 0;
  for (int i = 0; i < gain.length; i++) {
    current += gain[i];
    if (current > highest) {
      highest = current;
    }
  }
  return highest;
}
