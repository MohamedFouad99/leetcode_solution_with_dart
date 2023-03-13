void main() {
  print(isAnagram("anagram", "nagaram"));
}

bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;

  var sList = s.split('')..sort();
  var tList = t.split('')..sort();
  for (var i = 0; i < sList.length; i++) {
    if (sList[i] != tList[i]) return false;
  }
  return true;
}
