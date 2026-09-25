import 'dart:math';

void main() {
  print(lastStoneWeight([2, 7, 4, 1, 8, 1]));
}

int lastStoneWeight(List<int> stones) {
  if (stones.length == 1) return stones[0];
  int x = stones.reduce(max);
  stones.remove(x);
  int y = stones.reduce(max);
  stones.remove(y);
  if (x == y && stones.isEmpty) {
    return 0;
  } else if (x == y) {
    lastStoneWeight(stones);
  } else if (x != y) {
    x = x - y;
    stones.add(x);
    lastStoneWeight(stones);
  }
  return stones.isEmpty ? 0 : stones[0];
}
