void main(List<String> arguments) {
  // operator
  int number = 2;
  print(number++);
  print(++number);

  double anotherNumber = 4.0;
  anotherNumber += 5;
  print(anotherNumber);

  anotherNumber -= 3;
  print(anotherNumber);

  anotherNumber *= 2;
  print(anotherNumber);

  anotherNumber /= 2;
  print(anotherNumber);

  printLine(true);

  // null
  double? nullableNumber = 4.0;
  print(nullableNumber);

  nullableNumber = 2.0;
  print(nullableNumber);

  nullableNumber = null;
  print(nullableNumber);

  nullableNumber ??= 3.0; // 값이 null이면 오른쪽 값을 사용하고, null이 아닐 경우 기존 값 사용
  print(nullableNumber);

  printLine(true);

  // 비교
  print(anotherNumber == nullableNumber);

  // 타입 비교
  print(nullableNumber is double);
  print(nullableNumber is! int);

  printLine(true);

  // 논리
  bool result = 12 > 10 && 1 > 0;
  print(result);
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
