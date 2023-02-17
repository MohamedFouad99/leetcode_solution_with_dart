void main() {
  print(convertTemperature(122.11));
}

List<double> convertTemperature(double celsius) {
  return <double>[celsius + 273.15, celsius * 1.80 + 32.00];
}
