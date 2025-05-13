void main() {
  print(thirdMax([3, 2, 1]));
}

int thirdMax(List<int> nums) {
  nums.sort();
  var data = nums.toSet();
  int count = data.length;
  if (count <= 2) {
    return data.last;
  } else {
    return data.elementAt(count - 3);
  }
}
