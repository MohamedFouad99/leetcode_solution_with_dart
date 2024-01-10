void main() {
  print(kidsWithCandies([2, 3, 5, 1, 3], 3));
}

List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
  int max = 0;

  for (final int candy in candies) {
    max = candy > max ? candy : max;
  }

  List<bool> result = [];
  for (final int nomination in candies) {
    result.add(nomination + extraCandies >= max);
  }
  return result;
}
