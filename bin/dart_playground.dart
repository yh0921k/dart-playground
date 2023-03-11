void main(List<String> arguments) {
  List<String> names = ['Dart', 'Java', 'Flutter', 'Spring', 'Java'];
  print(names);
  print(names.asMap()); // Key로 인덱스 바인딩
  print(names.toSet()); // 중복 제거
  printLine(true);

  Map namesMap = names.asMap();
  print(namesMap.keys); // Iterable
  print(namesMap.values); // Iterable
  printLine(true);

  // Iterable을 List로 변환
  print(namesMap.keys.toList());
  printLine(true);

  Set namesSet = Set.from(names);
  print(namesSet);
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
