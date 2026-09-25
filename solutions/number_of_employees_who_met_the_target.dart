void main() {
  print(numberOfEmployeesWhoMetTarget([0, 1, 2, 3, 4], 2));
}

int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
  int count = 0;
  for (int i = 0; i < hours.length; i++) {
    if (hours[i] >= target) {
      count++;
    }
  }
  return count;
}
