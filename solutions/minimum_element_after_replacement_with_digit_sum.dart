void main() {
  print(minElement([10, 12, 13, 14]));
}

int minElement(List<int> nums) {
  int min = nums[0];
  for (int i = 0; i < nums.length; i++) {
    //sum of its digits.
    int sum = nums[i]
        .toString()
        .split('')
        .map(int.parse)
        .reduce((a, b) => a + b);
    if (sum < min) {
      // Find the minimum value
      min = sum;
    }
  }
  return min;
}
