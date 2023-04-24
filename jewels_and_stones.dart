void main() {
  print(numJewelsInStones("z", "ZZ"));
}

int numJewelsInStones(String jewels, String stones) {
  int answer = 0;
  for (int i = 0; i < jewels.length; i++) {
    for (int j = 0; j < stones.length; j++) {
      if (jewels[i] == stones[j]) answer++;
    }
  }
  return answer;
}
