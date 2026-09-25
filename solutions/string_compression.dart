void main() {
  print(compress(["a", "a", "b", "b", "c", "c", "c"]));
}

int compress(List<String> chars) {
  int i = 0;
  int j = 0;
  int count = 1;

  while (i < chars.length) {
    if (i < chars.length - 1 && chars[i] == chars[i + 1]) {
      count++;
    } else {
      chars[j] = chars[i];
      j++;

      if (count > 1) {
        String countString = count.toString();
        for (int k = 0; k < countString.length; k++) {
          chars[j] = countString[k];
          j++;
        }
      }
      count = 1;
    }
    i++;
  }
  return j;
}
