void main(List<String> arguments) {
  // List
  // List<String> name = ["A", "B", "C", 4]; // Error
  List<String> names = ["A", "B", "C"];
  List<int> numbers = [1, 2, 3, 4, 5];
  print(names);
  print(numbers);
  
  printLine(true);

  // index
  print(names[0]);
  // print(names[4]); // Error

  // length
  print(names.length);

  // add
  names.add("D");
  print(names);

  // remove
  names.remove("C");
  print(names);

  // indexOf
  print(names.indexOf("B"));
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
