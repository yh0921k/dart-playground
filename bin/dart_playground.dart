void main(List<String> arguments) {
  // nullable - null일 수 있음
  // non-nullable - null이 될 수 없음

  // String name = null; // Error
  String? name = 'Dart';
  name = null;
  print(name);

  String nonNullName = 'Dart';
  print(nonNullName!); // 현재 이 값이 null일 경우 에러
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
