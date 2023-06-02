// Destructuring: 값을 분해한 상태로 받아옴
main(List<String> arguments) async {
  // Map
  final sampleMap = {'name': 'Dart', 'age': 20};
  final {'name': mapKey, 'age': mapValue} = sampleMap;
  print(mapKey);
  print(mapValue);
}