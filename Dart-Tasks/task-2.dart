void main() {
  List<double> l = [2, 3, 4, 5];
  double k = findMaximum(l);
  print("Maximum number = $k");
  double j = findMinimum(l);
  print("Minimum number = $j");
  double m = calculateSum(l);
  print("Total = $m");
  double n = calculateAverage(l);
  print("Average = $n");
}

double findMaximum(List<double> arr) {
  double max = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > max) max = arr[i];
  }
  return max;
}

double findMinimum(List<double> arr) {
  double min = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] < min) min = arr[i];
  }
  return min;
}

double calculateSum(List<double> arr) {
  double total = 0;
  for (int i = 0; i < arr.length; i++) {
    total += arr[i];
  }
  return total;
}

double calculateAverage(List<double> arr) {
  double total = calculateSum(arr);
  return total / arr.length;
}
