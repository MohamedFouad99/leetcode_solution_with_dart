void main() {
  print(countAsterisks("l|*e*et|c**o|*de|"));
}

int countAsterisks(String s) {
  int stars = 0;
  bool isPair = false;
  for (int i = 0; i < s.length; i++) {
    if (s[i] == "|" && isPair == false) {
      isPair = true;
    } else if (s[i] == "|" && isPair == true) {
      isPair = false;
    }
    if (s[i] == "*" && !isPair) {
      stars++;
    }
  }
  return stars;
}
