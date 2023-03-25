void main() {
  print(checkIfPangram("thequickbrownfoxjumpsoverthelazydog"));
}

bool checkIfPangram(String sentence) {
  List<String> list = sentence.trim().split('');
  list.sort();
  Set<String> set = {};
  set.addAll(list);
  String alphabet = 'abcdefghijklmnopqrstuvwxyz';
  return alphabet == set.join();
}
