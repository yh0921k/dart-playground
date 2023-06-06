// Pattern Matching
main(List<String> arguments) async {
  print(switcher(5, true));
  print(switcher(7, true));
  print(switcher(7, false));
}

// Switch 문을 반환
String switcher(dynamic value, bool condition) => switch (value) {
      5 => 'match: 5',
      7 when condition => 'match 7 and true',
      _ => 'no match',
    };
