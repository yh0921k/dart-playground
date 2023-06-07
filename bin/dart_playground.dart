// Pattern Matching
main(List<String> arguments) async {
  forLooper();
}

void forLooper() {
  final List<Map<String, dynamic>> languages = [
    {'name': 'Dart', 'age': 20},
    {'name': 'Flutter', 'age': 30}
  ];

  for (final language in languages) {
    print(language['name']);
    print(language['age']);
  }

  print('=' * 30);

  for (var {'name': name, 'age': age} in languages) {
    print(name);
    print(age);
  }
}
