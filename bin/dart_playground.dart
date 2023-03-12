main(List<String> arguments) async {
  playAllStream().listen((event) {
    print(event);
  });
}

Stream<int> playAllStream() async* {
  yield* calculate(1); // yield*은 해당하는 스트림의 모든 값이 리턴될 때까지 기다림(Future의 await과 비슷함)
  yield* calculate(1000);
}

Stream<int> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield i * number;
    
    await Future.delayed(Duration(seconds: 1));
  }
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
