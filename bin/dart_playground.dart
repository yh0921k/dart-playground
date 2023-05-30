// Destructuring: 값을 분해한 상태로 받아옴
main(List<String> arguments) async {
  // Rest Matching
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  final [x, y, ..., z] = numbers; // Rest Matching: 리스트 안에서 한 번만 사용 가능
  print(x);
  print(y);
  print(z);
}