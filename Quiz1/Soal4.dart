void main() {
  Map<String, dynamic> mahasiswa = {
    'nama': 'Budi',
    'nim': 230101,
    'jurusan': 'Teknik Informatika',
    'nilai': 85
  };
  String Status;
  if (mahasiswa['nilai'] >= 75) {
    Status = 'Lulus';
  } else {
    Status = 'Tidak Lulus';
  }

  print('=== DETAIL MAHASISWA ===');
  print('Nama      : ${mahasiswa['nama']}');
  print('Harga     : ${mahasiswa['nim']}');
  print('Kategori  : ${mahasiswa['jurusan']}');
  print('Tersedia  : ${mahasiswa['nilai']}');
  print('Tersedia  : $Status');
}