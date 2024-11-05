void main() {
  String s = "abcde", goal = "cdeab";
  print(rotateString(s, goal));
}

bool rotateString(String s, String goal) {
  if (s.length != goal.length) return false;
  return (s + s).contains(goal);
}
