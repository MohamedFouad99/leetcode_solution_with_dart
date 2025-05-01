void main() {
  print(findRelativeRanks([10, 3, 8, 9, 4]));
}

List<String> findRelativeRanks(List<int> score) {
  List<int> athletScore = List.from(score);
  athletScore.sort((a, b) => b.compareTo(a));

  Map<int, int> rank = {};
  for (int i = 0; i < athletScore.length; i++) {
    rank[athletScore[i]] = i + 1;
  }

  List<String> res = [];
  for (int i = 0; i < score.length; i++) {
    if (rank[score[i]] == 1) {
      res.add("Gold Medal");
    } else if (rank[score[i]] == 2) {
      res.add("Silver Medal");
    } else if (rank[score[i]] == 3) {
      res.add("Bronze Medal");
    } else {
      res.add(rank[score[i]].toString());
    }
  }

  return res;
}
