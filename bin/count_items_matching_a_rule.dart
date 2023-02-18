void main() {
  print(countMatches([
    ["phone", "blue", "pixel"],
    ["computer", "silver", "lenovo"],
    ["phone", "gold", "iphone"]
  ], "color", "silver"));
}

int countMatches(List<List<String>> items, String ruleKey, String ruleValue) {
  int key = 0, res = 0;

  if (ruleKey == "color") {
    key = 1;
  } else if (ruleKey == "name") {
    key = 2;
  }

  for (int i = 0; i < items.length; i++) {
    if (items[i][key] == ruleValue) res++;
  }
  return res;
}
