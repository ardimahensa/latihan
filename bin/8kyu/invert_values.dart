// Given a set of numbers, return the additive inverse of each. Each positive
// becomes negatives, and the negatives become positives.

// invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
// invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
// invert([]) == []

List<int> invert(List<int> arr) {
  List<int> result = [];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] >= 0) {
      result.add(-arr[i]);
    } else {
      result.add(-arr[i]);
    }
  }
  return result;
}

//or

List<int> invert1(List<int> arr) => arr
    .asMap()
    .entries
    .map((index) => index.value >= 0 ? -index.value : -index.value)
    .toList();

//or

List<int> invert2(List<int> arr) => arr.map((e) => -e).toList();
void main() {
  print(invert2([1, -2, 3, -4, 5]));
}
