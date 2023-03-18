void main() {
  print(judgeCircle("UD"));
}

bool judgeCircle(String moves) {
  int upDown = 0;
  int rightLeft = 0;
  for (int i = 0; i < moves.length; i++) {
    moves[i] == 'R'
        ? rightLeft++
        : moves[i] == 'L'
            ? rightLeft--
            : moves[i] == 'U'
                ? upDown++
                : upDown--;
  }
  return upDown == 0 && rightLeft == 0;
}
