class MenuFood {
  String nama;
  int harga;

  MenuFood(this.nama, this.harga);

  int get _harga => harga;

  void tampilkanDetail() {
    print('=== MENU FOOD ===');
    print('Nama      : $nama');
    print('Harga     : Rp$_harga');
  }
}

void main() {
  MenuFood menu1 = MenuFood('Mie Ayam', 12000);

  menu1.tampilkanDetail();
}
