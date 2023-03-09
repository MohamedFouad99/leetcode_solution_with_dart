void main() {
  print(restoreString("codeleet", [4, 5, 6, 7, 0, 2, 1, 3]));
}

String restoreString(String s, List<int> indices) {
  return List.generate(indices.length, (index) => s[indices.indexOf(index)])
      .join();
}
