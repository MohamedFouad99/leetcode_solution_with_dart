void main() {
  print(mergeTwoLists([], []));
}

List<int> mergeTwoLists(List<int> list1, List<int> list2) {
  if (list1 == null) return list2;
  if (list2 == null) return list1;
  list1.addAll(list2);
  list1.sort();
  return list1;
}
