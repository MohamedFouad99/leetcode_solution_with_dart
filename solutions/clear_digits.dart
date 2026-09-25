void main() {
  print(clearDigits("cbdw32"));
}

String clearDigits(String s) {
  // Convert the string to a list of characters for easier manipulation
  List<String> charList = s.split('');

  // Continue the process until there are no digits left
  while (charList.any((char) => RegExp(r'\d').hasMatch(char))) {
    // Find the index of the first digit
    int digitIndex =
        charList.indexWhere((char) => RegExp(r'\d').hasMatch(char));

    // Remove the digit
    charList.removeAt(digitIndex);

    // Remove the closest non-digit character to the left
    for (int i = digitIndex - 1; i >= 0; i--) {
      if (!RegExp(r'\d').hasMatch(charList[i])) {
        charList.removeAt(i);
        break;
      }
    }
  }

  // Join the list back into a string
  return charList.join('');
}
