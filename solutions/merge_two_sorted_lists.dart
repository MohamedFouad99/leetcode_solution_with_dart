void main() {
  print(mergeTwoLists([], []));
}

List<int> mergeTwoLists(List<int> list1, List<int> list2) {
  if (list1.isEmpty) return list2;
  if (list2.isEmpty) return list1;
  list1.addAll(list2);
  list1.sort();
  return list1;
}
