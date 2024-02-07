// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostsResponse _$PostsResponseFromJson(Map<String, dynamic> json) {
  return _PostsResponse.fromJson(json);
}

/// @nodoc
mixin _$PostsResponse {
  List<PostDto> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsResponseCopyWith<PostsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsResponseCopyWith<$Res> {
  factory $PostsResponseCopyWith(
          PostsResponse value, $Res Function(PostsResponse) then) =
      _$PostsResponseCopyWithImpl<$Res, PostsResponse>;
  @useResult
  $Res call({List<PostDto> result});
}

/// @nodoc
class _$PostsResponseCopyWithImpl<$Res, $Val extends PostsResponse>
    implements $PostsResponseCopyWith<$Res> {
  _$PostsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<PostDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostsResponseImplCopyWith<$Res>
    implements $PostsResponseCopyWith<$Res> {
  factory _$$PostsResponseImplCopyWith(
          _$PostsResponseImpl value, $Res Function(_$PostsResponseImpl) then) =
      __$$PostsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostDto> result});
}

/// @nodoc
class __$$PostsResponseImplCopyWithImpl<$Res>
    extends _$PostsResponseCopyWithImpl<$Res, _$PostsResponseImpl>
    implements _$$PostsResponseImplCopyWith<$Res> {
  __$$PostsResponseImplCopyWithImpl(
      _$PostsResponseImpl _value, $Res Function(_$PostsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$PostsResponseImpl(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<PostDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostsResponseImpl extends _PostsResponse {
  const _$PostsResponseImpl({required final List<PostDto> result})
      : _result = result,
        super._();

  factory _$PostsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostsResponseImplFromJson(json);

  final List<PostDto> _result;
  @override
  List<PostDto> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'PostsResponse(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsResponseImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsResponseImplCopyWith<_$PostsResponseImpl> get copyWith =>
      __$$PostsResponseImplCopyWithImpl<_$PostsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostsResponseImplToJson(
      this,
    );
  }
}

abstract class _PostsResponse extends PostsResponse {
  const factory _PostsResponse({required final List<PostDto> result}) =
      _$PostsResponseImpl;
  const _PostsResponse._() : super._();

  factory _PostsResponse.fromJson(Map<String, dynamic> json) =
      _$PostsResponseImpl.fromJson;

  @override
  List<PostDto> get result;
  @override
  @JsonKey(ignore: true)
  _$$PostsResponseImplCopyWith<_$PostsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
