int hitungDiskon(int harga, int persentase) {
  double potongan = harga * (persentase / 100);
  return (harga - potongan).toInt();
}

void main() {
  int hargaAwal = 100000;
  int diskon = 20;
  int potongan = (hargaAwal * (diskon / 100)).toInt();
  int totalBayar = hitungDiskon(hargaAwal, diskon);

  print("Harga Awal : Rp$hargaAwal");
  print("Diskon     : $diskon%");
  print("Potongan   : Rp$potongan");
  print("Total Bayar: Rp$totalBayar");
}