void main() {
  print(isIsomorphic("egg", "add"));
}

bool isIsomorphic(String s, String t) {
  Map<String, int> mapS = {};
  Map<String, int> mapT = {};
  for (int i = 0; s.length > i; i++) {
    mapS.addAll({s[i]: i});
    mapT.addAll({t[i]: i});
  }
  return mapS.values.join() == mapT.values.join();
}
