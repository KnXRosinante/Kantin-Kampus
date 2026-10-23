//instruksi 3
void main() {
  int harga = 15000;
  int jumlah = 3;

  int subtotal = harga * jumlah;
  double pajak = subtotal * 0.1;
  double total = subtotal + pajak;

  print('Nama Produk  : Nasi Goreng');
  print('Harga        : Rp$harga');
  print('Jumlah Beli  : $jumlah');
  print('Subtotal     : Rp$subtotal');
  print('Pajak 10%    : Rp${pajak.toInt()}');
  print('Total        : RP${total.toInt()}');
}
