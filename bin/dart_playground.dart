import 'dart:async';

main(List<String> arguments) async {
  final controller = StreamController();
  // final stream = controller.stream; // 기본적으로 한 번 리스닝을 할 수 있는 스트림이 생김
  final stream = controller.stream.asBroadcastStream(); // 여러 번 리스닝을 할 수 있는 스트림 생성

  final streamListener1 = stream.where((event) => event % 2 == 1).listen((event) {
    print("Listener1 : $event");
  });

  final streamListener2 = stream.where((event) => event % 2 == 0).listen((event) {
    print("Listener2 : $event");
  });
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}

void printLine(bool addEmptyLine) {
  if (addEmptyLine) {
    print("");
  }

  print("=" * 20);
}
