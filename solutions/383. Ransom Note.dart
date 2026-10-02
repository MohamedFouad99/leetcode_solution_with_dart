void main() {
  canConstruct("a", "b");
}

bool canConstruct(String ransomNote, String magazine) {
  List<int> count = List.filled(26, 0);

  // Count letters in magazine
  for (int i = 0; i < magazine.length; i++) {
    int index = magazine.codeUnitAt(i) - 'a'.codeUnitAt(0);
    count[index]++;
  }

  // Use letters for ransomNote
  for (int i = 0; i < ransomNote.length; i++) {
    int index = ransomNote.codeUnitAt(i) - 'a'.codeUnitAt(0);

    if (count[index] == 0) {
      return false;
    }

    count[index]--;
  }

  return true;
}
