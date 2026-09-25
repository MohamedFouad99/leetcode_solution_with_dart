void main() {
  List<String> words = ["Hello", "Alaska", "Dad", "Peace"];

  print(findWords(words));
}

// Given an array of strings words, return the words that can be typed using
// letters of the alphabet on only one row of American keyboard like the image below.
List<String> findWords(List<String> words) {
  String row1 = "qwertyuiop";
  String row2 = "asdfghjkl";
  String row3 = "zxcvbnm";
  List<String> result = [];

  for (String word in words) {
    int row1Count = 0;
    int row2Count = 0;
    int row3Count = 0;
    for (int i = 0; i < word.length; i++) {
      if (row1.contains(word[i].toLowerCase())) {
        row1Count++;
      } else if (row2.contains(word[i].toLowerCase())) {
        row2Count++;
      } else if (row3.contains(word[i].toLowerCase())) {
        row3Count++;
      }
    }

    if (row1Count == word.length ||
        row2Count == word.length ||
        row3Count == word.length) {
      result.add(word);
    }
  }
  return result;
}
