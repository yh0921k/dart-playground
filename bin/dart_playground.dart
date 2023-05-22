main(List<String> arguments) async {
  final result = nameAndAge({'name': 'yh', 'age': 32});
  print(result);
  print(result[0]);
  print(result[0].length); // IDE의 자동완성 도움을 받을 수 없음

  print("=" * 20);

  final resultInRecord = nameAndAgeInRecord({'name': 'yh', 'age': 32});
  print(resultInRecord);
  print(resultInRecord.$1);
  print(resultInRecord.$1.length);
  print(resultInRecord.$2.isEven);
}

// 아래 예제는 리스트 형태로 반환이 이루어지기 때문에 타입을 한가지로만 정의할 수 있음
nameAndAge(Map<String, dynamic> json) {
  return [json['name'], json['age']];
}

// Record
// - 리스트를 좀 더 규격화해서 표현할 수 있음(Tuple)
// 타입의 순서 보장
(String, int) nameAndAgeInRecord(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}