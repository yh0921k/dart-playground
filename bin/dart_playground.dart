void main(List<String> arguments) {
  final String name = "Dart";
  // name = "Flutter"; // final 변수는 선언한 이후 값을 변경하지 못함

  const int age = 10;
  // age = 20; // const 변수는 선언한 이후 값을 변경하지 못함

  // final, const는 타입 생략 가능
  final flutter = "Flutter";
  const hour = 20;

  final DateTime now = DateTime.now();
  // const DateTime now = DateTime.now(); // Error: const는 빌드 시간에 값을 알고 있어야 하며, DateTime.now()는 런타임에 해당 값을 알 수 있음
  print(now);
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
