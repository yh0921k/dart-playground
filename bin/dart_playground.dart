// Pattern Matching
main(List<String> arguments) async {
  ifMatcher();
}

void ifMatcher() {
  final student = {
    'name': 'kyh',
    'age': '32' // 출력없음: int 타입에 맞게 변경해야함
  };

  // 구조분해와 동시에 검증이 필요한 경우
  if(student case {'name': String name, 'age': int age}) {
    print(name);
    print(age);
  }
}