void main(List<String> arguments) {
  // Set
  final Set<String> names = {"Dart", "Java", "Flutter", "Dart"};
  print(names);

  // add
  names.add("Javascript");
  print(names);

  // remove
  names.remove("Flutter");
  print(names);

  // contains
  print(names.contains("Java"));
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
