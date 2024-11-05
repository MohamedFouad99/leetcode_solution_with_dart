void main() {
  print(compressedString("fffffffffdddddddddddddddddddddddddmmmmooooooooooss"));
}

String compressedString(String word) {
  int count = 0;
  String compressed = "";

  for (int i = 0; i < word.length; i++) {
    count++;
    if (count == 9) {
      compressed += count.toString();
      compressed += word[i];
      count = 0;
    } else if (i + 1 < word.length && word[i] == word[i + 1]) {
      continue;
    } else {
      compressed += count.toString();
      compressed += word[i];
      count = 0;
    }
  }
  return compressed;
}
