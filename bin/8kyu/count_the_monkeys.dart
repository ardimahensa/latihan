List<int> monkeyCount(int n) {
  // your code here
  List<int> result = [];
  for (int i = 1; i <= n; i++) {
    result.add(i);
  }
  return result;
}

//or
List<int> monkeyCount2(int n) => List.generate(n, (i) => i + 1);

void main() {
  print(monkeyCount2(5));
}
