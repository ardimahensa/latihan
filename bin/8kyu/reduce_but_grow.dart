/*
Diberikan array bilangan bulat yang tidak kosong,
kembalikan hasil perkalian nilai secara berurutan. 
Contoh:
[1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24
*/

int grow(List<int> arr) => arr.fold(1, (a, b) => a * b);

void main() {
  print(grow([4, 1, 1, 1, 4]));
}
