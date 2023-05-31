// Destructuring: 값을 분해한 상태로 받아옴
main(List<String> arguments) async {
  // Rest Matching with name
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  final [xx, yy, ...items, zz] = numbers;
  print(items);
}