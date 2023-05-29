// Destructuring: 값을 분해한 상태로 받아옴
main(List<String> arguments) async {
  // List
  final languages = ['Dart', 'Java'];
  final [String a, String b] = languages; // 타입 명시 가능
  print(a);
  print(b);
}
