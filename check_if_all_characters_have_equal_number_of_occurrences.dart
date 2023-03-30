void main() {}
bool areOccurrencesEqual(String s) {
  if (s.isEmpty) {
    return true;
  }

  Map<String, int> charFreq = {};
  int maxFreq = 0;

  // Calculate the frequency of each character in the string
  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    int freq = charFreq.containsKey(char) ? charFreq[char]! + 1 : 1;
    charFreq[char] = freq;
    maxFreq = freq > maxFreq ? freq : maxFreq;
  }

  // Check if all characters have the same frequency
  for (int freq in charFreq.values) {
    if (freq != maxFreq) {
      return false;
    }
  }

  return true;
}
