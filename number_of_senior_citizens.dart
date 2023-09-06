void main() {
  print(
      countSeniors(["7868190130M7522", "5303914400F9211", "9273338290F4010"]));
}

int countSeniors(List<String> details) {
  int result = 0;
  for (int i = 0; i < details.length; i++) {
    if (int.parse(details[i][11]) >= 6 && int.parse(details[i][12]) > 0 ||
        int.parse(details[i][11]) > 6) {
      result++;
    }
  }
  return result;
}
