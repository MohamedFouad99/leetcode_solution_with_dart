void main() {
  print(truncateSentence("Hello how are you Contestant", 4));
}

String truncateSentence(String s, int k) {
  List<String> list = s.split(' ');
  List<String> result = [];
  for (int i = 0; i < k; i++) {
    result.add(list[i]);
  }
  return result.join(' ');
}
