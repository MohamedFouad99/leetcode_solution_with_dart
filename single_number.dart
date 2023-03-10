void main() {
  print(singleNumber([4, 1, 2, 1, 2]));
}

int singleNumber(List<int> nums) {
  int result = 0;
  for (int num in nums) {
    result ^= num;
  }
  return result;
}
