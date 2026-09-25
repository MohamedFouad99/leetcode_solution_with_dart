void main() {
  String s = "ab";
  String goal = "ba";
  bool result = buddyStrings(s, goal);
  print(result); // Output: true
}

bool buddyStrings(String s, String goal) {
  if (s.length != goal.length) return false;
  if (s == goal) {
    Set<String> uniqueChars = Set.from(s.split(''));
    return uniqueChars.length < s.length; // Check for duplicates
  }
  List<int> diffIndices = [];
  for (int i = 0; i < s.length; i++) {
    if (s[i] != goal[i]) {
      diffIndices.add(i);
      if (diffIndices.length > 2) return false;
    }
  }
  return diffIndices.length == 2 &&
      s[diffIndices[0]] == goal[diffIndices[1]] &&
      s[diffIndices[1]] == goal[diffIndices[0]];
}
