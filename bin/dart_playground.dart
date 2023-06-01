// Destructuring: 값을 분해한 상태로 받아옴
main(List<String> arguments) async {
  // Ignore
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  final [xxx, yyy, ...rest, zzz, _] = numbers; // 실제로 가져올 수 있는 방법이 없음
  print(rest);
  print(zzz);
}