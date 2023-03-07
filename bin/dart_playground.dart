void main(List<String> arguments) {
  // if
  int number = 3;
  if(number % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }
  printLine(true);

  // switch
  switch(number % 2) {
    case 0:
      print("Even");
      break;
    case 1:
      print("Odd");
      break;
    default:
      print("Default");
  }
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
