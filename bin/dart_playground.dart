// Pattern Matching
main(List<String> arguments) async {
  // Validation
  final language = ('Dart', 20);

  final (name as String, age as int) = language;
  // final(name as int, age as int) = language; // 런타임 에러 발생

  print(name);
  print(age);
}
