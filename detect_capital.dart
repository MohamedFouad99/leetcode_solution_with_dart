void main() {
  print(detectCapitalUse('leetcode'));
}

bool detectCapitalUse(String word) {
  int count = 0;
  for (int i = 0; i < word.length; i++) {
    if (word[i] == word[i].toUpperCase()) {
      count++;
    }
  }
  return count == 0 ||
      count == word.length ||
      (count == 1 && word[0] == word[0].toUpperCase());
}
