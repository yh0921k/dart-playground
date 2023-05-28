// Destructuring: 값을 분해한 상태로 받아옴
main(List<String> arguments) async {
  final dart = ('Dart', 20);
  print(dart.$1);
  print(dart.$2);

  // final name = dart.$1;
  // final age = dart.$2

  // Record
  final (name, age) = ('Dart', 20);
  print(name);
  print(age);
}
