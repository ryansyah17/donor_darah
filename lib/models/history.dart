class History {
  final int? id;
  final String? picture;
  final String? donor;
  final String? tanggal;
  final String? tempat;

  History({
    this.id,
    this.picture,
    this.donor,
    this.tanggal,
    this.tempat,
  });
}

List<History> mockHistory = [
  History(
    id: 1,
    picture:
        'https://cdn.sekolah.mu/certificate/sertifikat-sekolahmu-3263774-1631417172-1.jpg',
    donor: 'Donor Pertama',
    tanggal: '17 April 2022',
    tempat: 'Bukittinggi',
  ),
  History(
    id: 2,
    picture:
        'https://cdn.sekolah.mu/certificate/sertifikat-sekolahmu-3263774-1631417172-1.jpg',
    donor: 'Donor Kedua',
    tanggal: '17 Juli 2022',
    tempat: 'Bukittinggi',
  ),
  History(
    id: 3,
    picture:
        'https://cdn.sekolah.mu/certificate/sertifikat-sekolahmu-3263774-1631417172-1.jpg',
    donor: 'Donor Ketiga',
    tanggal: '17 Oktober 2022',
    tempat: 'Bukittinggi',
  ),
  History(
    id: 4,
    picture:
        'https://cdn.sekolah.mu/certificate/sertifikat-sekolahmu-3263774-1631417172-1.jpg',
    donor: 'Donor Ketiga',
    tanggal: '17 Oktober 2222',
    tempat: 'Bukittinggi',
  ),
];
