void main() {
  List<int> nums = [10, 4, 8, 3];

  print(leftRigthDifference(nums));
}

List<int> leftRigthDifference(List<int> nums) {
  List<int> result = [];
  int leftSum = 0;
  int rightSum = 0;
  for (int i = 0; i < nums.length; i++) {
    leftSum = 0;
    rightSum = 0;

    for (int j = 0; j < i; j++) {
      leftSum += nums[j];
    }

    for (int k = i + 1; k < nums.length; k++) {
      rightSum += nums[k];
    }
    result.add((leftSum - rightSum).abs());
  }

  return result;
}
