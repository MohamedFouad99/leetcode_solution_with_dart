void main() {
  print(mostWordsFound([
    "alice and bob love leetcode",
    "i think so too",
    "this is great thanks very much"
  ]));
}

int mostWordsFound(List<String> sentences) {
  int max = 0;

  for (String sentence in sentences) {
    List<String> words = sentence.split(' ');
    int wordCount = words.length;

    if (wordCount > max) {
      max = wordCount;
    }
  }

  return max;
}
