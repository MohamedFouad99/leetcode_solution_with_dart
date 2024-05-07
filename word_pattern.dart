void main() {
  print(wordPattern("abba", "dog dog dog dog"));
}

bool wordPattern(String pattern, String s) {
  List<String> list = s.split(' ');
  Map<String, String> map = {};

  if (list.length != pattern.length) {
    return false;
  }

  for (int i = 0; i < pattern.length; i++) {
    if (map.containsKey(pattern[i])) {
      if (map[pattern[i]] != list[i]) {
        return false;
      }
    } else {
      if (map.containsValue(list[i])) {
        return false;
      }
      map[pattern[i]] = list[i];
    }
  }

  return true;
}
