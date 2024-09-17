void main() {
  print(uncommonWords("apple apple", "banana"));
}

List<String> uncommonWords(String s1, String s2) {
  List<String> list1 = s1.split(' ');
  List<String> list2 = s2.split(' ');
  list1.addAll(list2);
  Map<String, int> map = {};
  for (int i = 0; i < list1.length; i++) {
    map[list1[i]] = (map[list1[i]] ?? 0) + 1;
  }

  for (int i = 0; i < list1.length; i++) {
    if (map[list1[i]] != 1) {
      list1.removeAt(i);
      i--;
    }
  }
  return list1;
}
