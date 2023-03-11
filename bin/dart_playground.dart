void main(List<String> arguments) {
  List<int> numbers = [1, 3, 5, 7, 9];
  final result = numbers.reduce((prev, next) => prev + next);
  print(result);

  List<String> words = ['Hello, ', "I'm ", 'Dart'];
  final sentence = words.reduce((value, element) => value + element);
  print(sentence);

  // final length = words.reduce((value, element) => value.length + element.length); // Error: 반환타입이 String이어야함
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
