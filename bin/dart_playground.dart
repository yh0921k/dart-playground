void main(List<String> arguments) {
  printLine(true);
  Employee dart = Employee('Dart');
  Employee java = Employee('java');

  Employee.building = 'Factory';
  dart.printNameAndBuilding();
  java.printNameAndBuilding();
  Employee.printBuilding();
}

class Employee {
  // 인스턴스가 아닌, 클래스에 귀속되는 변수
  static String? building;

  final String name;

  Employee(this.name);

  void printNameAndBuilding() {
    print("My name is $name");
    print("I'm working in $building");
  }

  static void printBuilding() {
    print("We are working in $building");
  }
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
