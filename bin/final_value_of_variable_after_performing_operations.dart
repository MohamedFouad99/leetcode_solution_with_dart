void main() {
  print(finalValueAfterOperations(["--X", "X++", "X++"]));
}

int finalValueAfterOperations(List<String> operations) {
  int ans = 0;
  for (int i = 0; i < operations.length; i++) {
    if (operations[i] == "X++" || operations[i] == "++X") {
      ans++;
    } else {
      ans--;
    }
  }
  return ans;
}
