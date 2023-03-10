void main(List<String> arguments) {
  printLine(false);
  Person dart = Person(name: 'Dart', age: 5);
  dart.sayName();
  dart.sayAge();

  printLine(true);
  Student java = Student('java', 30, 'JAVA0001');
  java.sayName();
  java.sayAge();
  java.sayStudentNumber();

  // Type Comparison
  print(dart is Student);
  print(java is Person);
  print(java is Student);
}

class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  void sayName() {
    print("Hello, I'm $name");
  }

  void sayAge() {
    print("My age is $age");
  }
}

class Student extends Person {
  String studentNumber;

  Student(String name, int age, this.studentNumber) : super(name: name, age: age);

  void sayStudentNumber() {
    print("My student number is $studentNumber");
  }
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
