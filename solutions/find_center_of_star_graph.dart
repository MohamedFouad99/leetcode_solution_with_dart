void main() {
  print(findCenter([
    [1, 2],
    [2, 3],
    [4, 2]
  ]));
}

int findCenter(List<List<int>> edges) {
  return edges[0][0] == edges[1][0] || edges[0][0] == edges[1][1]
      ? edges[0][0]
      : edges[0][1];
}
