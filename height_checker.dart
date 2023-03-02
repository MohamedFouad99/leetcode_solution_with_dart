void main() {
  print(heightChecker([1, 1, 4, 2, 1, 3]));
}

int heightChecker(List<int> heights) {
  int count = 0;
  List<int> expected = [];
  expected.addAll(heights);
  heights.sort();
  for (int i = 0; i < heights.length; i++) {
    if (heights[i] != expected[i]) {
      count++;
    }
  }
  return count;
}
