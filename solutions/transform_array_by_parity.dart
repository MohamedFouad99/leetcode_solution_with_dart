void main() {
  List<int> arr = [1, 5, 1, 4, 2];
  List<int> result = transformArray(arr);
  print(result);
}

/// Returns a new list where all the even elements from the input list
/// are placed before all the odd elements.
///
/// The relative order of even and odd elements is preserved.
List<int> transformArray(List<int> arr) {
  List<int> even = [];
  List<int> odd = [];

  /// Iterate over the input list and separate even and odd numbers.
  for (int num in arr) {
    if (num % 2 == 0) {
      even.add(0);
    } else {
      odd.add(1);
    }
  }

  /// Return a new list with all the even elements first, followed by
  /// all the odd elements.
  return [...even, ...odd];
}
