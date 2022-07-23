class Notifikasi {
  final int? id;
  final String? nama;
  final String? golDarah;
  final String? banyak;
  final String? lokasi;
  final String? kontak;

  Notifikasi({
    this.id,
    this.nama,
    this.golDarah,
    this.banyak,
    this.lokasi,
    this.kontak,
  });
}

List<Notifikasi> mocknotifikasi = [
  Notifikasi(
      id: 1,
      nama: 'tono',
      golDarah: 'O',
      banyak: '5',
      lokasi: 'bukittinggi',
      kontak: '082237636363'),
  Notifikasi(
      id: 2,
      nama: 'tano',
      golDarah: 'O',
      banyak: '5',
      lokasi: 'bukittinggi',
      kontak: '082237636363'),
  Notifikasi(
      id: 3,
      nama: 'trrrsdno',
      golDarah: 'O',
      banyak: '5',
      lokasi: 'bukittinggi',
      kontak: '082237636363'),
];
