void main(List<String> arguments) {
  int result = addNumbers([1, 2, 3, 4, 5]);
  print('result : $result');

  result = optionalAddNumbers(10, 15);
  print(result);

  result = namedAddNumber(z: 15, y: 10);
  print(result);

  // 기본 positional parameter와 named parameter는 조합해서 사용 가능(코드 생략
  // arrow function
  int sum = arrowAddNumbers(20, y: 10);
  print(sum);
}

int addNumbers(List<int> numbers) {
  return numbers.reduce((value, element) => value += element);
}

// optional parameter
int optionalAddNumbers(int x, [int y = 20, int z = 30]) {
  int sum = x + y + z;
  return sum;
}

// named parameter : 순서가 중요하지 않음
// required 키워드를 제공하면 optional parameter로 사용 가능
int namedAddNumber({int x = 10, required int y, required int z}) {
  int sum = x + y + z;
  return sum;
}

// arrow function
int arrowAddNumbers(int x, { required int y, int z = 20}) => x + y + z;

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
