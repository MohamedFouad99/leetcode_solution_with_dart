void main() {
  print(arrayStringsAreEqual(["ab", "c"], ["a", "bc"]));
}

bool arrayStringsAreEqual(List<String> word1, List<String> word2) {
  String list1 = "";
  String list2 = "";
  for (String text in word1) {
    list1 += text;
  }
  for (String text in word2) {
    list2 += text;
  }
  if (list1 == list2) {
    return true;
  } else {
    return false;
  }
}
