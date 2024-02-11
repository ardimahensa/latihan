import 'dart:math';

int pangkatBilanganDasar(int bilangan, eksponen) {
  var result = pow(bilangan, eksponen);
  return result.toInt();
}

void main() {
  print(pangkatBilanganDasar(5, 3));
}
