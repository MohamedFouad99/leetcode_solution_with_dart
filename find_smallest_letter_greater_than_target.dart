void main() {
  print(nextGreatestLetter(["c", "f", "j"], "a"));
}

String nextGreatestLetter(List<String> letters, String target) {
  int start = 0;
  int end = letters.length - 1;
  while (start <= end) {
    int mid = (start + end) ~/ 2;
    if (letters[mid].compareTo(target) <= 0) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }
  return letters[start % letters.length];
}
