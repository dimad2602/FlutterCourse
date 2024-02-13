import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_model.g.dart';
part 'filter_model.freezed.dart';

@freezed
class FilterModel with _$FilterModel {
  const FilterModel._();

  const factory FilterModel({
    required int age,
    required String gender,
    required bool hasAvatar,
  }) = _FilterModel;

  factory FilterModel.fromJson(Map<String, Object?> json) =>
      _$FilterModelFromJson(json);
}
