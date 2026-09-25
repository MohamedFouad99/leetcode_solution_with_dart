void main() {
  List<int> arr1 = [1, 2, 3, 4];
  List<int> arr2 = [7, 1, 2, 3];
  print(canBeEqual(arr1, arr2));
}

bool canBeEqual(List<int> target, List<int> arr) {
  target.sort();
  arr.sort();
  for (int i = 0; i < target.length; i++) {
    if (target[i] != arr[i]) {
      return false;
    }
  }
  return true;
}
