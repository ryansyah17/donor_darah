// enum StatusType { open, close }

class Schedule {
  final int? id;
  final String? title;
  final String? types;
  final String? time;
  final String? location;
  final String? picture;
  final String? golA;
  final String? golB;
  final String? golO;
  final String? golAB;

  Schedule({
    this.types,
    this.id,
    this.title,
    this.time,
    this.location,
    this.picture,
    this.golA,
    this.golB,
    this.golO,
    this.golAB,
  });
}

List<Schedule> mockSchedule = [
  Schedule(
    id: 1,
    title: 'Stand Mobil 1',
    time: '09.00 - 11.00  WIB',
    types: 'Open',
    location: 'Jln. Bukittingi No. 23',
    picture:
        'https://pmidiy.or.id/wp-content/uploads/2021/05/20210511_103323-2048x1152.jpg',
    golA: '3',
    golB: '4',
    golO: '5',
    golAB: '1',
  ),
  Schedule(
    id: 2,
    title: 'Stand Mobil 2',
    time: '09.00 - 17.00  WIB',
    types: 'Close',
    location: 'Jln. Bukitting No. 23',
    picture:
        'https://pmidiy.or.id/wp-content/uploads/2021/05/20210511_103323-2048x1152.jpg',
    golA: '3',
    golB: '4',
    golO: '5',
    golAB: '1',
  ),
  Schedule(
    id: 3,
    title: 'Stand Mobil 3',
    time: '09.00 - 11.00  WIB',
    types: 'Open',
    location: 'Jln. Bukitting No. 23',
    picture:
        'https://pmidiy.or.id/wp-content/uploads/2021/05/20210511_103323-2048x1152.jpg',
    golA: '3',
    golB: '4',
    golO: '5',
    golAB: '1',
  ),
  Schedule(
    id: 4,
    title: 'Stand Mobil 4',
    time: '09.00 - 11.00  WIB',
    types: 'Open',
    location: 'Jln. Bukitting No. 23',
    picture:
        'https://pmidiy.or.id/wp-content/uploads/2021/05/20210511_103323-2048x1152.jpg',
    golA: '3',
    golB: '4',
    golO: '5',
    golAB: '1',
  ),
];
