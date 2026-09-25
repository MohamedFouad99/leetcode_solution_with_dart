void main() {
  List<List<int>> points = [
    [8, 7],
    [9, 9],
    [7, 4],
    [9, 7]
  ];
  print(widestVerticalArea(points));
}

int widestVerticalArea(List<List<int>> points) {
  // Extract only the x-coordinates from the points
  List<int> xCoordinates = points.map((point) => point[0]).toList();

  // Sort the x-coordinates
  xCoordinates.sort();

  // Initialize the maximum gap
  int maxGap = 0;

  // Find the maximum gap between consecutive x-coordinates
  for (int i = 1; i < xCoordinates.length; i++) {
    int gap = xCoordinates[i] - xCoordinates[i - 1];
    maxGap = gap > maxGap ? gap : maxGap;
  }

  return maxGap;
}
