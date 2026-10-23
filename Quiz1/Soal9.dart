class Food {
  String namaMakanan;
  int harga;

  Food(this.namaMakanan, this.harga);
  void tampilanDetail() {


    print('Nama     : $namaMakanan');
    print('Harga    : Rp$harga\n');
  }
}

class Drink extends Food {
  Drink(String namaMakanan, int harga) : super(namaMakanan, harga);
  void tampilanDetail() {

    print('Nama     : $namaMakanan');
    print('Harga    : Rp$harga');
  }
}
void main() {
  
  List<Food> produk = [
    Food('Ayam Geprek', 18000),
    Drink('Es Teh', 5000)
  ];

  print('=== DAFTAR PRODUK ===');
  for (var item in produk) {
    item.tampilanDetail();
  }

}
