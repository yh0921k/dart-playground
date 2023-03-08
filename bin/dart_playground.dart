void main(List<String> arguments) {
  Operation operation = add;
  print(operation(1, 2, 3));

  operation = subtract;
  print(subtract(10, 9, 1));
  printLine(true);

  // 사용예시
  int result = calculate(30, 40, 50, add);
  print(result);
}

typedef Operation = int Function(int x, int y, int z);

// add
int add(int x, int y, int z) => x + y + z;

// subtract
int subtract(int x, int y, int z) => x - y - z;

// calculate
int calculate(int x, int y, int z, Operation operation) {
  return operation(x, y, z);
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
