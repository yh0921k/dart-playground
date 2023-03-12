

main(List<String> arguments) async {
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

  // await은 Future를 리턴해야함
  printLine(true);
  final result1 = await addNumbers(1, 1);
  final result2 = await addNumbers(2, 2);
  print(result1 + result2);
}

Future<int> addNumbers(int number1, int number2) async {
  print("계산시작: $number1 + $number2");

  // 서버 시뮬레이션
  final result = await Future.delayed(Duration(seconds: 2), () => number1 + number2);

  print("계산완료: $number1 + $number2 = $result");

  return result;
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
