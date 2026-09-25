void main() {
  print(longestCommonPrefix(["dog", "racecar", "car"]));
}

String longestCommonPrefix(List<String> text) {
  int textSize = text.length;
  int index = 1;

  if (text[0].isEmpty) {
    return '';
  } else {
    while (true) {
      if (index > text[0].length) {
        break;
      }
      var sub = text[0].substring(0, index);
      var search = text.where((element) => element.startsWith(sub));
      if (search.isEmpty || search.length < textSize) {
        break;
      } else {
        index++;
      }
    }
  }
  return text[0].substring(0, index - 1);
}
