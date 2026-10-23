void main() {
  String namaMahasiswa = 'Andi';
  int Nilai = 78;

  String kategori;
  if (Nilai >= 75) {
    kategori = 'Lulus';
  } else {
    kategori = 'Tidak Lulus';
  }

  print('Nama Mahasiswa : $namaMahasiswa');
  print('Nilai          : $Nilai');
  print('Status         : $kategori');
}
