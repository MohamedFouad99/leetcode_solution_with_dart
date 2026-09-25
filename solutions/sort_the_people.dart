void main() {
  print(sortPeople(["Mary", "John", "Emma"], [180, 165, 170]));
}

List<String> sortPeople(List<String> names, List<int> heights) {
  List<Map<String, dynamic>> list = [];
  for (int i = 0; i < names.length; i++) {
    list.add({'name': names[i], 'height': heights[i]});
  }

  list.sort((a, b) => b['height'] - a['height']);

  List<String> result = [];
  for (int i = 0; i < list.length; i++) {
    result.add(list[i]['name']);
  }
  return result;
}
