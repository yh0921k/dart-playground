void main(List<String> arguments) {
  // loop
  for(int i = 0; i <= 10; i++) {
    print(i);
  }

  // sum
  int total = 0;
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for(int i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }
  print(total);
  printLine(true);

  // for in
  total = 0;
  for(int number in numbers) {
    print(number);
    total += number;
  }
  print(total);
  printLine(true);

  // while
  total = 0;
  while(total < 10) {
    total++;
  }
  print(total);

  // do while
  total = 0;
  do {
    total++;
  } while(total < 10);
  print(total);
  printLine(true);

  // break
  total = 0;
  while(total < 10) {
    total += 1;
    if(total == 5) {
      break;
    }
  }
  print(total);
  printLine(true);

  // continue
  for(int i = 0; i < 10; i++) {
    if(i == 5) {
      continue;
    }
    print(i);
  }
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
