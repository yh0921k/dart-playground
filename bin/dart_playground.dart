main(List<String> arguments) async {}

// final로 클래스 선언
// - extends, implements, mixin으로 사용이 불가능
// - 같은 파일 안에서는 가능
final class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}
