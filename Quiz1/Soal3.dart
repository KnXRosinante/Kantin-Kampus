void main() {
  List<String> menuKantin = [
    'Nasi Goreng',
    'Mie Ayam',
    'Ayam Geprek',
    'Soto Ayam',
    'Es Teh'
  ];

  print('=== DAFTAR MENU KANTINKAMPUS ===');

  for (int i = 0; i < menuKantin.length; i++) {
    print('${i + 1}. ${menuKantin[i]}');
  }
}