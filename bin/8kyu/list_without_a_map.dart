List<int> maps(List<int> arr) =>
    arr.asMap().entries.map((index) => index.value + index.value).toList();

//or

List<int> maps2(List<int> arr) => arr.map((index) => index + index).toList();
void main() {
  print(maps2([1, 1, 1, 10, 20, 2, 4]));
}
