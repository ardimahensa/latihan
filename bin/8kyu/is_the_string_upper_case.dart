bool isUpperCase(String str) {
//your code here
  for (int i = 0; i < str.length; i++) {
    if (str[i] != str[i].toUpperCase()) {
      return false;
    }
  }
  return true;
}

//or

bool isUpperCase2(String str) =>
    str.split('').every((char) => char != char.toUpperCase() ? false : true);

//or
bool isUpperCase3(String str) => str == str.toUpperCase();

void main() {
  print(isUpperCase3('HELLo I AM DONALD'));
}
