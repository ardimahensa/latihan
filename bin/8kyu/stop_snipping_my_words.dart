String spinWords(String str) {
  // your code here
  List<String> kataKata = str.split(' ');
  for (int i = 0; i < kataKata.length; i++) {
    if (kataKata[i].length >= 5) {
      kataKata[i] = kataKata[i].split('').reversed.join();
    }
  }
  return kataKata.join(' ');
}

//or
String spinWords2(String str) {
  return str
      .split(' ')
      .map((kata) => kata.length > 4 ? kata.split('').reversed.join() : kata)
      .join(' ');
}

void main() {
  print(spinWords2('aku suka makan gorengan'));
}
