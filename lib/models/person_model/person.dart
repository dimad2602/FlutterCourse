import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';

@freezed
class Person with _$Person {
  const Person._();

  const factory Person(
      {required String firstName,
      required String lastName,
      required int age}) = _Person;

  Person changeAge(int age) {
    return copyWith(age: age);
  }
}
