void main() {
  print(
    isBoomerang([
      [1, 1],
      [2, 3],
      [3, 2],
    ]),
  );
}

bool isBoomerang(List<List<int>> points) {
  return (points[1][0] - points[0][0]) * (points[2][1] - points[1][1]) !=
      (points[2][0] - points[1][0]) * (points[1][1] - points[0][1]);
}
