main(List<String> arguments) async {
  DateTime now = DateTime.now();

  print(now);
  print(now.year);
  print(now.month);
  print(now.day);
  print(now.hour);
  print(now.minute);
  print(now.second);
  print(now.millisecond);
  print('=' * 20);

  Duration duration = Duration(seconds: 60);
  print(duration);
  print(duration.inDays);
  print(duration.inHours);
  print(duration.inMinutes);
  print(duration.inSeconds);
  print(duration.inMilliseconds);
  print('=' * 20);

  DateTime specificDay = DateTime(2023, 03, 22, 20, 20, 20);
  print(specificDay);

  final difference = now.difference(specificDay);
  print(difference);
  print(difference.inDays);
  print(difference.inHours);
  print(difference.inMinutes);

  print('=' * 20);
}
