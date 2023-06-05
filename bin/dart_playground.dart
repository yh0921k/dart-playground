// Pattern Matching
main(List<String> arguments) async {
  // switcher('aaa');
  // switcher('bbb');
  // switcher(['1', '2']);
  // switcher([1, 2]);
  // switcher([1, 2, 3]);
  // switcher([4, 5, 6]);
  // switcher([4, 5, 6, 7]);
  // switcher([4, 5]);
  // switcher([4, '5']);

  switcher(7); // switch 문에서 조건절 사용 예시
  switcher(17); // switch 문에서 조건절 사용 예시
}

void switcher(dynamic anything) {
  switch (anything) {
    case 'aaa':
      print('match: aaa');
    case ['1', '2']:
      print('match: [1, 2]');
    case [_, _, _]:
      print('match: [_, _, _]');
    case [int a, int b]:
      print('match: [int $a, int $b]'); // $를 명시하여 실제 값을 출력해볼 수 있음
    case < 10 && > 5:
      print('match: < 10 && > 5');
    default:
      print('no match');
  }
}
