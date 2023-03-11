void main(List<String> arguments) {
  List<Map<String, String>> names = [
    {'name': 'Dart', 'group': 'Frontend'},
    {'name': 'Java', 'group': 'Backend'},
    {'name': 'Flutter', 'group': 'Frontend'}
  ];
  print(names);

  // where
  final frontend = names.where((element) => element['group'] == 'Frontend').toList();
  print(frontend);
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
