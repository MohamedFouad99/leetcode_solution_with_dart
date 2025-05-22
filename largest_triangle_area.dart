import 'dart:math';

void main() {
  List<List<int>> points = [
    [0, 0],
    [0, 1],
    [1, 0],
    [0, 2],
    [2, 0],
  ];
  double result = largestTriangleArea(points);
  print(result); // Output: 6.0
}

double calculateTriangleArea(List<List<int>> points, int i, int j, int k) {
  return 0.5 *
      (points[i][0] * (points[j][1] - points[k][1]) +
              points[j][0] * (points[k][1] - points[i][1]) +
              points[k][0] * (points[i][1] - points[j][1]))
          .abs();
}

double largestTriangleArea(List<List<int>> points) {
  double maxArea = 0.0;
  int n = points.length;

  for (int i = 0; i < n - 2; i++) {
    for (int j = i + 1; j < n - 1; j++) {
      for (int k = j + 1; k < n; k++) {
        double area = calculateTriangleArea(points, i, j, k);
        maxArea = max(maxArea, area);
      }
    }
  }

  return maxArea;
}
