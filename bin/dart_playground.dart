void main(List<String> arguments) {
  Student student = Student('Dart');
  student.sayName();

  printLine(true);
  print(student is Student);
  print(student is PersonInterface);

}

// interface : abstract 키워드를 붙여 인스턴스화를 막을 수 있음
abstract class PersonInterface {
  String name;

  PersonInterface(this.name);

  void sayName(); // abstract 클래스는 함수 몸체를 지울 수 있음
}

class Student implements PersonInterface {
  @override
  String name;

  Student(this.name);

  @override
  void sayName() {
    print("I'm $name");
  }

}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
