void main() {
  print(calPoints(["1", "C"]));
}

int calPoints(List<String> operations) {
  List<int> scores = [];
  for (String operation in operations) {
    if (operation == "C") {
      scores.removeLast();
    } else if (operation == "D") {
      scores.add(scores.last * 2);
    } else if (operation == "+") {
      scores.add(scores[scores.length - 1] + scores[scores.length - 2]);
    } else {
      scores.add(int.parse(operation));
    }
  }
  return scores.isEmpty ? 0 : scores.reduce((a, b) => a + b);
}
