main(List<String> arguments) async {
}

// base로 클래스 선언
// - extends는 가능하지만 implements는 불가능
// - OOP 상에서 상속만 가능하게 할 수 있음(다트에는 인터페이스 타입이 없어 기존에 파악이 불편했음)
// - base, sealed, final로 선언된 클래스만 extends가 가능
base class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}