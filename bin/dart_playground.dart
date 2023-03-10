void main(List<String> arguments) {
  Student<String> dart = Student('A0001', 'Dart');
  dart.printStudentNumberType();

  Student<int> java = Student(1000, 'Java');
  java.printStudentNumberType();
}

// generic - 타입을 외부에서 받을때 사용
class Student<T> {
  final T studentNumber;
  final String name;

  Student(this.studentNumber, this.name);

  void printStudentNumberType() {
    print(studentNumber.runtimeType);
  }
}


void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
