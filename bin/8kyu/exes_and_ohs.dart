bool xo(str) {
  var xX = str
      .toString()
      .split('')
      .where((char) => char == 'x' || char == 'X')
      .join();
  var oO = str
      .toString()
      .split('')
      .where((char) => char == 'o' || char == 'O')
      .join();
  if (xX.length == oO.length) {
    return true;
  }
  return false;
}

//or

bool xo2(str) =>
    'x'.allMatches(str.toString().toLowerCase()).length ==
    'o'.allMatches(str.toString().toLowerCase()).length;

void main() {
  print(xo2('xxxm'));
}
