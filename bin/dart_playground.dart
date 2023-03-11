void main(List<String> arguments) {
  List<String> names = ['Dart', 'Java', 'Flutter', 'Spring'];
  
  List<String> addPrefixNames = names.map((name) => "Name : $name").toList();
  print(addPrefixNames);
  print(names == addPrefixNames);
  printLine(true);

  String numbers = '13579';
  final parsed = numbers.split('').map((number) => '$number.jpg');
  print(parsed);

}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
