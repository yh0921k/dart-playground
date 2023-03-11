void main(List<String> arguments) {
  Set names = {'Dart', 'Java', 'Spring', 'Flutter'};

  final addPrefixNames = names.map((name) => 'Name: $name').toSet();
  print(addPrefixNames);
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
