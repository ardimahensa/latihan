/// Buatlah program Dart untuk menghitung kecepatan roket.
/// Kecepatan roket dapat dihitung dengan rumus: kecepatan = jarak / waktu.
/// Berikan contoh input dan output dari program yang Anda buat.

double kecepatan(int jarak, waktu) => jarak / waktu;

/// Sebuah roket ditembakkan ke langit. Jika roket mencapai ketinggian
/// 5000 meter dalam waktu 60 detik, dan kemudian mencapai ketinggian
/// 10000 meter dalam waktu 120 detik, berapakah kecepatan rata-rata roket?

double perbandinganWaktu(int jarak, waktu) => jarak / waktu;

// Sebuah roket meluncur dari titik A ke titik B dengan kecepatan konstan.
// Jarak antara titik A dan B adalah 200 kilometer.
// Jika kecepatan rata-rata roket adalah 5000 meter per detik,
// berapa waktu yang diperlukan untuk mencapai titik B?

double kecepatanDanJarak(int jarak, kecepatan) => jarak / kecepatan;

// Suatu roket melaju dengan kecepatan 3000 meter per detik
// selama 30 detik, kemudian kecepatannya ditingkatkan menjadi
// 5000 meter per detik selama 45 detik. Hitunglah jarak total
// yang ditempuh roket selama perjalanan ini.

num variasiKecepatan(int kecepatanA, waktuA, kecepatanB, waktuB) =>
    ((kecepatanA * waktuA) + (kecepatanB * waktuB)) / 1000;

// Dua roket, A dan B, meluncur ke angkasa. Jika kecepatan roket A
// adalah 4000 meter per detik dan kecepatan roket B adalah 3000
// meter per detik, berapakah perbandingan kecepatan keduanya?
// (Contoh jawaban: "Kecepatan roket A adalah 4/3 kali kecepatan roket B.")

num perbandinganKecepatan(int kecepatanA, kecepatanB) =>
    kecepatanA / kecepatanB;

String perbandinganKecepatan1(int kecepatanA, kecepatanB) {
  int calculate(int a, b) {
    if (b == 0) {
      return a;
    } else {
      return calculate(b, a % b);
    }
  }

  int fpb = calculate(kecepatanA, kecepatanB);
  kecepatanA ~/= fpb;
  kecepatanB ~/= fpb;
  return 'Kecepatan roket A adalah $kecepatanA/$kecepatanB kali kecepatan roket B.';
}

// Sebuah roket meluncur ke langit dengan percepatan konstan.
// Jika roket mencapai kecepatan maksimum 6000 meter per detik
// dalam waktu 90 detik, berapa percepatan roket tersebut?

String kecepatanMaksimum(int jarak, waktu) =>
    (jarak / waktu).toStringAsFixed(2);

// Sebuah roket ditembakkan ke langit dengan percepatan konstan hingga
// mencapai kecepatan maksimum. jika waktu yang dibutuhkan untuk
// mencapai kecepatan maksimum adalah 120 detik, hitunglah jarak
// total yang ditempuh roket selama waktu ini.

num waktuDanKecepatanMaksimum(
        int kecepatanAwal, waktuMaksimum, Function() kecepatanMaksimum) =>
    (kecepatanAwal * waktuMaksimum) +
    (0.5 * kecepatanMaksimum() * (waktuMaksimum * waktuMaksimum) / 1000);

void main() {
  print(kecepatan(10, 3).toStringAsFixed(2));
  print(perbandinganWaktu(10000, 120).toStringAsFixed(2));
  print(kecepatanDanJarak(200, 5000).toStringAsFixed(2));
  print('${variasiKecepatan(3000, 30, 5000, 45)} KM');
  print(perbandinganKecepatan1(100000, 250000));
  print('${kecepatanMaksimum(6000, 90)} meter per detik');
  print(
    'total jarak total waktu yang di tempuh roket adalah ${waktuDanKecepatanMaksimum(0, 120, () => 6000).toStringAsFixed(0)} KM',
  );
}
