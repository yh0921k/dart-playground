void main(List<String> arguments) {
  printLine(true);
  TimesTwo timesTwo = TimesTwo(2);
  print(timesTwo.calculate());

  printLine(true);
  TimesFour timesFour = TimesFour(2);
  print(timesFour.calculate());
}

class TimesTwo {
  final int number;

  TimesTwo(this.number);

  int calculate() {
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(int number) : super(number);

  @override
  int calculate() {
    // return number * 4;
    return super.calculate() * 2;
  }
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
