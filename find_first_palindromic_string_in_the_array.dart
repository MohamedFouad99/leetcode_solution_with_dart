void main() {
  print(firstPalindrome(["abc", "car", "ada", "racecar", "cool"]));
}

String firstPalindrome(List<String> words) {
  for (int i = 0; i < words.length; i++) {
    if (words[i] == words[i].split('').reversed.join()) {
      return words[i];
    }
  }
  return "";
}
