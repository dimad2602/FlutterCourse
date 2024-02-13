// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterModel _$FilterModelFromJson(Map<String, dynamic> json) {
  return _FilterModel.fromJson(json);
}

/// @nodoc
mixin _$FilterModel {
  int get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  bool get hasAvatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterModelCopyWith<FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterModelCopyWith<$Res> {
  factory $FilterModelCopyWith(
          FilterModel value, $Res Function(FilterModel) then) =
      _$FilterModelCopyWithImpl<$Res, FilterModel>;
  @useResult
  $Res call({int age, String gender, bool hasAvatar});
}

/// @nodoc
class _$FilterModelCopyWithImpl<$Res, $Val extends FilterModel>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? gender = null,
    Object? hasAvatar = null,
  }) {
    return _then(_value.copyWith(
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      hasAvatar: null == hasAvatar
          ? _value.hasAvatar
          : hasAvatar // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterModelImplCopyWith<$Res>
    implements $FilterModelCopyWith<$Res> {
  factory _$$FilterModelImplCopyWith(
          _$FilterModelImpl value, $Res Function(_$FilterModelImpl) then) =
      __$$FilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int age, String gender, bool hasAvatar});
}

/// @nodoc
class __$$FilterModelImplCopyWithImpl<$Res>
    extends _$FilterModelCopyWithImpl<$Res, _$FilterModelImpl>
    implements _$$FilterModelImplCopyWith<$Res> {
  __$$FilterModelImplCopyWithImpl(
      _$FilterModelImpl _value, $Res Function(_$FilterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? gender = null,
    Object? hasAvatar = null,
  }) {
    return _then(_$FilterModelImpl(
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      hasAvatar: null == hasAvatar
          ? _value.hasAvatar
          : hasAvatar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterModelImpl extends _FilterModel {
  const _$FilterModelImpl(
      {required this.age, required this.gender, required this.hasAvatar})
      : super._();

  factory _$FilterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterModelImplFromJson(json);

  @override
  final int age;
  @override
  final String gender;
  @override
  final bool hasAvatar;

  @override
  String toString() {
    return 'FilterModel(age: $age, gender: $gender, hasAvatar: $hasAvatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterModelImpl &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.hasAvatar, hasAvatar) ||
                other.hasAvatar == hasAvatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, age, gender, hasAvatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      __$$FilterModelImplCopyWithImpl<_$FilterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterModelImplToJson(
      this,
    );
  }
}

abstract class _FilterModel extends FilterModel {
  const factory _FilterModel(
      {required final int age,
      required final String gender,
      required final bool hasAvatar}) = _$FilterModelImpl;
  const _FilterModel._() : super._();

  factory _FilterModel.fromJson(Map<String, dynamic> json) =
      _$FilterModelImpl.fromJson;

  @override
  int get age;
  @override
  String get gender;
  @override
  bool get hasAvatar;
  @override
  @JsonKey(ignore: true)
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
