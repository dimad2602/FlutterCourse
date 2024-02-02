import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_auto_model.g.dart';
part 'person_auto_model.freezed.dart';

@freezed
class PersonAutoModel with _$PersonAutoModel {
  const PersonAutoModel._();

  const factory PersonAutoModel({
    required String firstName,
    required String lastName,
    required int age,
  }) = _PersonAutoModel;

  PersonAutoModel changeAge(int age) {
    return copyWith(age: age);
  }

  factory PersonAutoModel.fromJson(Map<String, Object?> json)
      => _$PersonAutoModelFromJson(json);
}