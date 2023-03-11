void main(List<String> arguments) {
  List<int> numbers = [1, 3, 5, 7, 9];
  final result = numbers.fold<int>(0, (previousValue, element) => previousValue + element);
  print(result);

  List<String> words = ["Hello, ", "I'm ", "Dart"];
  final count = words.fold<int>(0, (previousValue, element) => previousValue + element.length);
  print(count);
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
