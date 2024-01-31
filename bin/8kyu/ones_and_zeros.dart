int binaryArrayToNumber(List<int> arr) {
  // your code here
  int desimal = 0;
  int exponent = 0;
  for (int i = arr.length - 1; i >= 0; i--) {
    int nilai = arr[i];
    desimal += nilai * (1 << exponent);
    exponent++;
  }
  return desimal;
}

//or
int binaryArrayToNumber2(List<int> arr) => int.parse(arr.join(''), radix: 2);

void main() {
  print(binaryArrayToNumber2([1, 1, 1, 1]));
}
