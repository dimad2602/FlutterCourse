// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_auto_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonAutoModel _$PersonAutoModelFromJson(Map<String, dynamic> json) {
  return _PersonAutoModel.fromJson(json);
}

/// @nodoc
mixin _$PersonAutoModel {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonAutoModelCopyWith<PersonAutoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonAutoModelCopyWith<$Res> {
  factory $PersonAutoModelCopyWith(
          PersonAutoModel value, $Res Function(PersonAutoModel) then) =
      _$PersonAutoModelCopyWithImpl<$Res, PersonAutoModel>;
  @useResult
  $Res call({String firstName, String lastName, int age});
}

/// @nodoc
class _$PersonAutoModelCopyWithImpl<$Res, $Val extends PersonAutoModel>
    implements $PersonAutoModelCopyWith<$Res> {
  _$PersonAutoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonAutoModelImplCopyWith<$Res>
    implements $PersonAutoModelCopyWith<$Res> {
  factory _$$PersonAutoModelImplCopyWith(_$PersonAutoModelImpl value,
          $Res Function(_$PersonAutoModelImpl) then) =
      __$$PersonAutoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName, int age});
}

/// @nodoc
class __$$PersonAutoModelImplCopyWithImpl<$Res>
    extends _$PersonAutoModelCopyWithImpl<$Res, _$PersonAutoModelImpl>
    implements _$$PersonAutoModelImplCopyWith<$Res> {
  __$$PersonAutoModelImplCopyWithImpl(
      _$PersonAutoModelImpl _value, $Res Function(_$PersonAutoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? age = null,
  }) {
    return _then(_$PersonAutoModelImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonAutoModelImpl extends _PersonAutoModel {
  const _$PersonAutoModelImpl(
      {required this.firstName, required this.lastName, required this.age})
      : super._();

  factory _$PersonAutoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonAutoModelImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final int age;

  @override
  String toString() {
    return 'PersonAutoModel(firstName: $firstName, lastName: $lastName, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonAutoModelImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonAutoModelImplCopyWith<_$PersonAutoModelImpl> get copyWith =>
      __$$PersonAutoModelImplCopyWithImpl<_$PersonAutoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonAutoModelImplToJson(
      this,
    );
  }
}

abstract class _PersonAutoModel extends PersonAutoModel {
  const factory _PersonAutoModel(
      {required final String firstName,
      required final String lastName,
      required final int age}) = _$PersonAutoModelImpl;
  const _PersonAutoModel._() : super._();

  factory _PersonAutoModel.fromJson(Map<String, dynamic> json) =
      _$PersonAutoModelImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$PersonAutoModelImplCopyWith<_$PersonAutoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
