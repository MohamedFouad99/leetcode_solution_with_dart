void main() {
  print(uniqueMorseRepresentations(["gin", "zen", "gig", "msg"]));
}

int uniqueMorseRepresentations(List<String> words) {
  List<String> morse = [
    ".-",
    "-...",
    "-.-.",
    "-..",
    ".",
    "..-.",
    "--.",
    "....",
    "..",
    ".---",
    "-.-",
    ".-..",
    "--",
    "-.",
    "---",
    ".--.",
    "--.-",
    ".-.",
    "...",
    "-",
    "..-",
    "...-",
    ".--",
    "-..-",
    "-.--",
    "--.."
  ];

  const String alph = 'abcdefghijklmnopqrstuvwxyz';

  List<String> list = [];
  for (String word in words) {
    String code = "";
    for (int i = 0; i < word.length; i++) {
      code += morse[alph.indexOf(word[i])];
    }
    list.add(code);
  }

  return list.toSet().length;
}
