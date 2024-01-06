void main() {
  print(numberOfBeams(["011001", "000000", "010100", "001000"]));
}

// https://leetcode.com/problems/number-of-laser-beams-in-a-bank/
int numberOfBeams(List<String> bank) {
  int totalBeams = 0;
  int aboveRowDeviceCount = 0;
  for (var row in bank) {
    var deviceCount = row.replaceAll('0', '').length;
    if (deviceCount != 0) {
      totalBeams += aboveRowDeviceCount * deviceCount;
      aboveRowDeviceCount = deviceCount;
    }
  }
  return totalBeams;
}
