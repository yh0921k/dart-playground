void main(List<String> arguments) {
  // 기본 출력
  print('Hello Dart');
  printLine(true);

  // 변수
  var name = 'Dart'; // 타입은 추론됨
  print(name);
  print(name.runtimeType);
  printLine(true);

  // 값 변경
  name = 'Flutter';
  print(name);
  printLine(true);

  // 중복 선언 불가
  // var name = '';

  // 정수 타입
  int number1 = 10;
  int number2 = -20;
  print(number1 + number2);
  print(number1 * number2);
  print(number1 / number2);
  print(number1 % 3);
  printLine(true);

  // 실수 타입
  double number3 = 2.5;
  double number4 = 0.5;
  print(number3 + number4);
  printLine(true);

  // Boolean
  bool isTrue = true;
  bool isFalse = false;
  print(isTrue);
  printLine(true);

  // String
  String studentNumber = "20A";
  print(studentNumber);
  print(studentNumber.toLowerCase());
  print('StudentNumber : ${studentNumber.runtimeType}'); // 해당 변수를 통해 추가적인 접근이 필요한 경우 괄호 필요
  print('StudentNumber : $studentNumber');
  printLine(true);

  // Dynamic
  dynamic value = 'Dynamic Type';
  print(value);

  var year = 2023;
  print(year);
  print(year.runtimeType);

  value = 2023; // dynamic 타입은 데이터 타입이 변경되는 값 변경이 가능함
  // year = 'var type'; # Error: var로 선언된 변수는 한 번 선언하면 선언할때 추론된 타입으로 고정됨
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
