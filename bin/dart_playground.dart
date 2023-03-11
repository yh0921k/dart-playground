void main(List<String> arguments) {
  List<int> even = [2, 4, 6, 8, 10];
  List<int> odd = [1, 3, 5, 7, 9];

  // cascading operator
  final result = [...even, ...odd];
  print(result);
  print(even == [...even]);

}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
