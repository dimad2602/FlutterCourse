import 'package:flutter_test/flutter_test.dart';

int aPlusB({required int a, required int b}) => a + b;

void main() {
  group("aPlusB()", () {
    test("aPlusB() positive", () {
      // arrange
      const x = 5;
      const y = 10;
      // act
      final result = aPlusB(a: x, b: y);
      // assert
      expect(result, 15);
    });
    test("aPlusB() negative", () {
      // arrange
      const x = 5;
      const y = -10;
      // act
      final result = aPlusB(a: x, b: y);
      // assert
      expect(result, -5);
    });
  });
}
