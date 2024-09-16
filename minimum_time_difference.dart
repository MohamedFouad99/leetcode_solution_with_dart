void main() {
  List<String> timePoints = ["00:00", "23:59", "00:00"];
  print(findMinDifference(timePoints));
}

int findMinDifference(List<String> timePoints) {
  // Helper function to convert time to minutes
  int timeToMinutes(String time) {
    List<String> parts = time.split(':');
    int hours = int.parse(parts[0]);
    int minutes = int.parse(parts[1]);
    return hours * 60 + minutes;
  }

  // Convert each time point to total minutes
  List<int> minutesList =
      timePoints.map((time) => timeToMinutes(time)).toList();

  // Sort the list of minutes
  minutesList.sort();

  // Initialize the minimum difference to a large number
  int minDifference = 1440; // Max possible difference in minutes (24 * 60)

  // Compare adjacent time points
  for (int i = 1; i < minutesList.length; i++) {
    int diff = minutesList[i] - minutesList[i - 1];
    minDifference = diff < minDifference ? diff : minDifference;
  }

  // Handle the circular difference (last point and the first point across midnight)
  int circularDiff = (1440 + minutesList[0]) - minutesList.last;
  minDifference = circularDiff < minDifference ? circularDiff : minDifference;

  return minDifference;
}
