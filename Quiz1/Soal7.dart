class MenuFood {
  String nama;
  int harga;
  bool tersedia;

  MenuFood(this.nama, this.harga, this.tersedia);

  void tampilkanDetail() {
    print('=== MENU FOOD ===');
    print('Nama      : $nama');
    print('Harga     : Rp$harga');
    print('Tersedia  : $tersedia');
  }
}

void main() {
  MenuFood menu = MenuFood('Nasi Goreng', 15000, true);
  
  menu.tampilkanDetail();
}