main(List<String> arguments) async {}

// Mixin Class
// 1. mixin은 extends나 with를 사용할 수 없다.
// - 따라서 mixin 클래스도 마찬가지로 사용 불가능하다.
// 2. 클래스는 on 키워드를 사용할 수 없다.
// - 따라서 mixin 클래스도 on 키워드를 사용할 수 없다.
mixin class AnimalMixin {
  String bark() {
    return '멍멍';
  }
}

class Dog with AnimalMixin {}
