

void main(List<String> arguments) {
  // 아래와 같은 동기 로직은 절대 순서가 변경될 일이 없음(코드 생략)
  // addNumbersSync(1, 1);
  // addNumbersSync(2, 2);
  // printLine(true);

  // Future - 미래에 받아올 값
  Future<String> name = Future.value('Dart');
  Future<int> number = Future.value(1);

  // delayed()
  // 첫 번째 파라미터는 지연 기간
  // 두 번째 파라미터는 지연 시간이 지난 후 실행할 함수
  // print('함수 시작');
  // Future.delayed(Duration(seconds: 2), () => print('Delay 끝'));

  printLine(true);
  addNumbers(1, 1);
  addNumbers(2, 2);
}

void addNumbers(int number1, int number2) async {
  print("계산시작: $number1 + $number2");

  // 서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), () => print("서버 계산 완료: ${number1 + number2}"));

  print("계산완료: $number1 + $number2");
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
