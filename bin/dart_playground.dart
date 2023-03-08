void main(List<String> arguments) {
  // enum
  Status status = Status.approved;
  print(status);
  if(status == Status.approved) {
    print("승인");
  }
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}

enum Status {
  approved, pending, rejected
}