void main() {
  print(findKthPositive([2, 3, 4, 7, 11], 5));
}

int findKthPositive(List<int> arr, int k) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] <= k)
      k++;
    else {
      break;
    }
  }
  return k;
}
