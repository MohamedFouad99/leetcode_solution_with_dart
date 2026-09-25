void main() {
  List<int> seats = [3, 1, 5];
  List<int> students = [2, 7, 4];

  print(minMovesToSeat(seats, students));
}

int minMovesToSeat(List<int> seats, List<int> students) {
  seats.sort();
  students.sort();

  int moves = 0;

  for (int i = 0; i < seats.length; i++) {
    moves += (seats[i] - students[i]).abs();
  }

  return moves;
}
