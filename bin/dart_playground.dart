// Destructuring: 값을 분해한 상태로 받아옴
main(List<String> arguments) async {
  // Class
  final language = Language(name: 'Dart', age: 20);
  final Language(name: languageName, age: languageAge) = language;
  print(languageName);
  print(languageAge);
}

class Language {
  final String name;
  final int age;

  Language({required this.name, required this.age});
}