main(List<String> arguments) async {
  final result = nameAndAges();
  print(result[0]['name'].length); // IDE의 자동완성 도움을 받지 못함

  print("=" * 20);
  final resultInRecord = nameAndAgesInRecord();
  print(resultInRecord);
}

// name, age를 동시에 어우르는 타입을 지정할 수 없어 dynamic 타입을 사용해야함
List<Map<String, dynamic>> nameAndAges() {
  return [
    {
      "name": "Dart",
      "age": 20,
    },
    {
      "name": "Flutter",
      "age": 15,
    },
  ];
}

// Record
(String name, String group, int age) nameAndAgesInRecord() {
  return ('Flutter', 'Dart', 20);
}