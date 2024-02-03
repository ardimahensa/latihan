int summation(int n) {
  var total = 0;
  for (int i = 0; i <= n; i++) {
    total += i;
  }
  return total;
}

//or

int summation1(int n) =>
    List.generate(n, (index) => index + 1).reduce((a, b) => a + b);

void main() {
  print(summation1(22));
}
