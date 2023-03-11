void main(List<String> arguments) {
  final List<Map<String, String>> data = [
    {'Name': 'Dart', 'Age': '5'},
    {'Name': 'Java', 'Age': '30'},
    {'Name': 'Spring', 'Age': '20'}
  ];
  print(data);

  // 프론트엔드는 어떤 형식의 데이터를 받을지 알 수 없어 아래와 같은 구조화가 필수
  // 실제 각각의 Map 데이터에는 name, age 속성이 있는지 모르기 때문에 '!'를 명시하여 해당 속성이 있다는 것을 강제
  final List<Person> people = data.map((e) => Person(name: e['Name']!, age: e['Age']!)).toList();
  print(people);

  printLine(true);
  for (Person person in people) {
    print(person.name);
  }

  printLine(true);
  final parsedPeople = people.where((person) => int.parse(person.age) >= 10);
  print(parsedPeople);

  // Functional Programming
  printLine(true);
  final result = data
      .map((e) => Person(name: e['Name']!, age: e['Age']!))
      .where((element) => int.parse(element.age) >= 10)
      .fold(0, (previousValue, element) => previousValue + element.name.length);
  print(result);
}

class Person {
  final String name;
  final String age;

  Person({required this.name, required this.age});

  @override
  String toString() {
    return 'Person(name:$name, age:$age';
  }
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
