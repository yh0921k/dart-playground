main(List<String> arguments) async {}

// sealed로 클래스 선언
// - abstract 이면서 final인 클래스
// - 패턴 매칭을 사용할 수 있도록 해줌
sealed class Person {}

class Student extends Person {}

class Engineer extends Person {}

class Developer extends Person {}

String whoIsHe(Person person) => switch (person) {
      Student s => '학생',
      Engineer e => '엔지니어',
    };
