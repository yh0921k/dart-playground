void main(List<String> arguments) {
  Map<String, String> grades = {'A': '95', 'B': '90', 'C': '85'};
  final result = grades.map((key, value) => MapEntry(key, '점수: $value'));
  print(result);

  final keys = grades.keys.toList();
  final values = grades.values.map((value) => '정수: $value').toList();
  print(keys);
  print(values);
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
