num sum(List<num> arr) {
  // your code here
  if (arr.isEmpty) return 0;

  var result = arr[0];

  for (int i = 1; i < arr.length; i++) {
    result += arr[i];
  }
  return result;
}

//or
num sum1(List<num> arr) => arr.fold(0, (a, b) => a + b);

void main() {
  print(sum([]));
  print(sum1([1, 2, 3, 4]));
}
