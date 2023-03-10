void main(List<String> arguments) {
  Developer flutterDeveloper = Developer("FlutterDeveloper", ["Dart", "Flutter"]);

  Developer springDeveloper = Developer.fromList([
    "SpringDeveloper",
    ["Java", "Spring"]
  ]);

  print(flutterDeveloper.firstSkill);
  print(springDeveloper.firstSkill);

  printLine(true);
  flutterDeveloper.firstSkill = '자바';
  print(flutterDeveloper.firstSkill);
}

class Developer {
  String name;
  List<String> skills;

  Developer(this.name, this.skills);

  Developer.fromList(List values)
      : name = values[0],
        skills = values[1];

  void hello() {
    print("안녕하세요. $name 입니다.");
  }

  void saySkills() {
    print("저는 ${skills.join(', ')}을(를) 사용할 수 있습니다.");
  }

  // getter
  // 일반적인 getFirstSkill() 형태로 구현할 수 있지만, 뉘앙스가 다름
  // getter의 경우 단순 값 조회
  // 메서드의 경우 특정 기능을 수행한 후 값 조회
  String get firstSkill {
    return skills[0];
  }

  // setter(무조건 하나의 파라미터만 허용 - '=' 연산자 기준 오른쪽에 명시된 값을 받기 위함)
  // final을 사용하면 값을 바꿀 수 없음(리스트안의 요소는 변경 가능, 리스트 자체는 불가능)
  // 즉, final을 사용하면 값을 변경 불가능하게 만들어 setter를 사용할 수 없음
  set firstSkill(String name) {
    skills[0] = name;
  }
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
