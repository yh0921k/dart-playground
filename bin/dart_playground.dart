void main(List<String> arguments) {
  // Map
  Map<String, String> dictionary = {
    "Dart" : "다트",
    "Flutter" : "플러터",
    "Java" : "자바"
  };
  print(dictionary);
  printLine(true);

  // add
  dictionary["Typescript"] = "타입스크립트";

  // addAll
  Map<String, String> another = {
    'Javascript' : "자바스크립트"
  };
  dictionary.addAll(another);
  print(dictionary);

  // get by key
  print(dictionary["Dart"]);

  // modify
  dictionary['Dart'] = '다트(Dart)';
  print(dictionary);
  printLine(true);

  // remove
  dictionary.remove("Dart");
  print(dictionary);

  // get keys, values
  print(dictionary.keys);
  print(dictionary.values);
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
