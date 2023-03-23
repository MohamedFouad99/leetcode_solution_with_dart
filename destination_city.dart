void main() {}
String destCity(List<List<String>> paths) {
  Set set = {};
  for (List<String> path in paths) {
    set.add(path[0]);
  }
  for (List<String> path in paths) {
    if (!set.contains(path[1])) return path[1];
  }
  return "";
}
