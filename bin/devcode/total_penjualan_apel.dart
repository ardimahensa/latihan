// Anda memiliki dataset penjualan apel selama satu minggu.
// Buatlah program Dart untuk menghitung total penjualan apel.
// Berikan contoh input dan output dari program yang Anda buat.

num penjualanApel(int hari1, hari2, hari3, hari4, hari5, hari6, hari7) =>
    hari1 + hari2 + hari3 + hari4 + hari5 + hari6 + hari7;

//or

num penjualanApel1(List<int> penjualanHarian) =>
    penjualanHarian.reduce((a, b) => a + b);

// Selama lima hari pertama, toko menjual 20, 30, 15, 25, dan 35 apel
// secara berurutan. Hitunglah rata-rata penjualan harian selama periode ini.

num rataRataPenjualan(List<int> penjualanHarian) =>
    penjualanHarian.reduce((a, b) => a + b) / 5;

// Toko A menjual 50 apel per hari, sementara Toko B menjual 40 apel per hari.
// Jika kedua toko tersebut beroperasi selama seminggu, berapakah perbandingan
// total penjualan mereka?

num perbandinganPenjualanToko(int tokoA, tokoB) {
  tokoA *= 7;
  tokoB *= 7;
  int perhitungan(int a, b) {
    if (b == 0) {
      return a;
    } else {
      return perhitungan(b, a % b);
    }
  }

  int fpb = perhitungan(tokoA, tokoB);

  tokoA ~/= fpb;
  tokoB ~/= fpb;

  return tokoA / tokoB;
}

// Toko mengalami kenaikan penjualan setiap harinya: 10, 20, 30, 40,
// dan 50 apel. Hitunglah total penjualan selama periode ini.

int variasiPenjualan(List<int> total) => total.reduce((a, b) => a + b);

void main() {
  print('Total penjualan apel dalam seminggu adalah ${penjualanApel1([
        10,
        10,
        10,
        10,
        10,
      ])}');

  print('Rata - rata penjualan lima hari pertama: ${rataRataPenjualan([
        20,
        30,
        15,
        25,
        35
      ])}');

  print(
      'perbandingan penjualan toko A dan toko B adalah ${perbandinganPenjualanToko(50, 40)}');
  print(variasiPenjualan([10, 20, 30, 40, 50]));
}
