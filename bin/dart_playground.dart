void main(List<String> arguments) {
  // new 생략가능
  // 기본 생성자에는 const를 사용할 수 있는데, 이는 const로 선언할 수 있는 변수들을 이용한 생성자(날짜, 시간과 같이 빌드타임에 값을 알 수 없는 경우 파라미터로 사용할 수 없음)를 의미
  // const 생성자는 플러터에서 약간의 효율을 올려줌(추후 플러터에서 학습)
  Developer flutterDeveloper = const Developer("FlutterDeveloper", ["Dart", "Flutter"]);
  Developer flutterDeveloper2 = const Developer("FlutterDeveloper", ["Dart", "Flutter"]);
  flutterDeveloper.hello();
  flutterDeveloper.saySkills();

  printLine(true);

  Developer springDeveloper = Developer.fromList([
    "SpringDeveloper",
    ["Java", "Spring"]
  ]);
  springDeveloper.hello();
  springDeveloper.saySkills();

  // springDeveloper.name = "NestJSDeveloper"; // Error

  printLine(true);
  print(flutterDeveloper == flutterDeveloper2);
}

class Developer {
  final String name;
  final List<String> skills;

  // constructor
  // Developer(String name, List<String> skills): this.name = name, this.skills = skills;
  const Developer(this.name, this.skills);

  // named constructor
  Developer.fromList(List values)
      : name = values[0],
        skills = values[1];

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
