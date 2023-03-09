void main(List<String> arguments) {
  // new 생략가능
  Developer flutterDeveloper = Developer("FlutterDeveloper", ["Dart", "Flutter"]);
  flutterDeveloper.hello();
  flutterDeveloper.saySkills();

  printLine(true);

  Developer springDeveloper = Developer.fromList(["SpringDeveloper", ["Java", "Spring"]]);
  springDeveloper.hello();
  springDeveloper.saySkills();
}

class Developer {
  String name;
  List<String> skills;

  // constructor
  // Developer(String name, List<String> skills): this.name = name, this.skills = skills;
  Developer(this.name, this.skills);

  // named constructor
  Developer.fromList(List values): name = values[0], skills = values[1];

  void hello() {
    print("안녕하세요. $name 입니다.");
  }

  void saySkills() {
    print("저는 ${skills.join(', ')}을(를) 사용할 수 있습니다.");
  }
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
