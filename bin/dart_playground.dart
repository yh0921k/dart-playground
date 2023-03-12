main(List<String> arguments) async {
  calculate(1).listen((event) {
    print('calculate(1): $event');
  });

  calculate(4).listen((event) {
    print('calculate(4): $event');
  });
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
