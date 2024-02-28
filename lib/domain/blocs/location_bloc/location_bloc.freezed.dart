// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestPermission,
    required TResult Function() getLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestPermission,
    TResult? Function()? getLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestPermission,
    TResult Function()? getLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestPermission value) requestPermission,
    required TResult Function(_Getlocation value) getLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestPermission value)? requestPermission,
    TResult? Function(_Getlocation value)? getLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestPermission value)? requestPermission,
    TResult Function(_Getlocation value)? getLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestPermissionImplCopyWith<$Res> {
  factory _$$RequestPermissionImplCopyWith(_$RequestPermissionImpl value,
          $Res Function(_$RequestPermissionImpl) then) =
      __$$RequestPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestPermissionImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$RequestPermissionImpl>
    implements _$$RequestPermissionImplCopyWith<$Res> {
  __$$RequestPermissionImplCopyWithImpl(_$RequestPermissionImpl _value,
      $Res Function(_$RequestPermissionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestPermissionImpl implements _RequestPermission {
  const _$RequestPermissionImpl();

  @override
  String toString() {
    return 'LocationEvent.requestPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestPermission,
    required TResult Function() getLocation,
  }) {
    return requestPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestPermission,
    TResult? Function()? getLocation,
  }) {
    return requestPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestPermission,
    TResult Function()? getLocation,
    required TResult orElse(),
  }) {
    if (requestPermission != null) {
      return requestPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestPermission value) requestPermission,
    required TResult Function(_Getlocation value) getLocation,
  }) {
    return requestPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestPermission value)? requestPermission,
    TResult? Function(_Getlocation value)? getLocation,
  }) {
    return requestPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestPermission value)? requestPermission,
    TResult Function(_Getlocation value)? getLocation,
    required TResult orElse(),
  }) {
    if (requestPermission != null) {
      return requestPermission(this);
    }
    return orElse();
  }
}

abstract class _RequestPermission implements LocationEvent {
  const factory _RequestPermission() = _$RequestPermissionImpl;
}

/// @nodoc
abstract class _$$GetlocationImplCopyWith<$Res> {
  factory _$$GetlocationImplCopyWith(
          _$GetlocationImpl value, $Res Function(_$GetlocationImpl) then) =
      __$$GetlocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetlocationImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$GetlocationImpl>
    implements _$$GetlocationImplCopyWith<$Res> {
  __$$GetlocationImplCopyWithImpl(
      _$GetlocationImpl _value, $Res Function(_$GetlocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetlocationImpl implements _Getlocation {
  const _$GetlocationImpl();

  @override
  String toString() {
    return 'LocationEvent.getLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetlocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestPermission,
    required TResult Function() getLocation,
  }) {
    return getLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestPermission,
    TResult? Function()? getLocation,
  }) {
    return getLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestPermission,
    TResult Function()? getLocation,
    required TResult orElse(),
  }) {
    if (getLocation != null) {
      return getLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestPermission value) requestPermission,
    required TResult Function(_Getlocation value) getLocation,
  }) {
    return getLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestPermission value)? requestPermission,
    TResult? Function(_Getlocation value)? getLocation,
  }) {
    return getLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestPermission value)? requestPermission,
    TResult Function(_Getlocation value)? getLocation,
    required TResult orElse(),
  }) {
    if (getLocation != null) {
      return getLocation(this);
    }
    return orElse();
  }
}

abstract class _Getlocation implements LocationEvent {
  const factory _Getlocation() = _$GetlocationImpl;
}

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocationModel? locationModel) granted,
    required TResult Function() notGranted,
    required TResult Function() permissionDenied,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationModel? locationModel)? granted,
    TResult? Function()? notGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationModel? locationModel)? granted,
    TResult Function()? notGranted,
    TResult Function()? permissionDenied,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_NotGranted value) notGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_NotGranted value)? notGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_NotGranted value)? notGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LocationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocationModel? locationModel) granted,
    required TResult Function() notGranted,
    required TResult Function() permissionDenied,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationModel? locationModel)? granted,
    TResult? Function()? notGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationModel? locationModel)? granted,
    TResult Function()? notGranted,
    TResult Function()? permissionDenied,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_NotGranted value) notGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_NotGranted value)? notGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_NotGranted value)? notGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GrantedImplCopyWith<$Res> {
  factory _$$GrantedImplCopyWith(
          _$GrantedImpl value, $Res Function(_$GrantedImpl) then) =
      __$$GrantedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationModel? locationModel});

  $LocationModelCopyWith<$Res>? get locationModel;
}

/// @nodoc
class __$$GrantedImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$GrantedImpl>
    implements _$$GrantedImplCopyWith<$Res> {
  __$$GrantedImplCopyWithImpl(
      _$GrantedImpl _value, $Res Function(_$GrantedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationModel = freezed,
  }) {
    return _then(_$GrantedImpl(
      locationModel: freezed == locationModel
          ? _value.locationModel
          : locationModel // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get locationModel {
    if (_value.locationModel == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.locationModel!, (value) {
      return _then(_value.copyWith(locationModel: value));
    });
  }
}

/// @nodoc

class _$GrantedImpl implements _Granted {
  const _$GrantedImpl({this.locationModel});

  @override
  final LocationModel? locationModel;

  @override
  String toString() {
    return 'LocationState.granted(locationModel: $locationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrantedImpl &&
            (identical(other.locationModel, locationModel) ||
                other.locationModel == locationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GrantedImplCopyWith<_$GrantedImpl> get copyWith =>
      __$$GrantedImplCopyWithImpl<_$GrantedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocationModel? locationModel) granted,
    required TResult Function() notGranted,
    required TResult Function() permissionDenied,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return granted(locationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationModel? locationModel)? granted,
    TResult? Function()? notGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return granted?.call(locationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationModel? locationModel)? granted,
    TResult Function()? notGranted,
    TResult Function()? permissionDenied,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted(locationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_NotGranted value) notGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return granted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_NotGranted value)? notGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return granted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_NotGranted value)? notGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted(this);
    }
    return orElse();
  }
}

abstract class _Granted implements LocationState {
  const factory _Granted({final LocationModel? locationModel}) = _$GrantedImpl;

  LocationModel? get locationModel;
  @JsonKey(ignore: true)
  _$$GrantedImplCopyWith<_$GrantedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotGrantedImplCopyWith<$Res> {
  factory _$$NotGrantedImplCopyWith(
          _$NotGrantedImpl value, $Res Function(_$NotGrantedImpl) then) =
      __$$NotGrantedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotGrantedImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$NotGrantedImpl>
    implements _$$NotGrantedImplCopyWith<$Res> {
  __$$NotGrantedImplCopyWithImpl(
      _$NotGrantedImpl _value, $Res Function(_$NotGrantedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotGrantedImpl implements _NotGranted {
  const _$NotGrantedImpl();

  @override
  String toString() {
    return 'LocationState.notGranted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotGrantedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocationModel? locationModel) granted,
    required TResult Function() notGranted,
    required TResult Function() permissionDenied,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return notGranted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationModel? locationModel)? granted,
    TResult? Function()? notGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return notGranted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationModel? locationModel)? granted,
    TResult Function()? notGranted,
    TResult Function()? permissionDenied,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (notGranted != null) {
      return notGranted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_NotGranted value) notGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return notGranted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_NotGranted value)? notGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return notGranted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_NotGranted value)? notGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (notGranted != null) {
      return notGranted(this);
    }
    return orElse();
  }
}

abstract class _NotGranted implements LocationState {
  const factory _NotGranted() = _$NotGrantedImpl;
}

/// @nodoc
abstract class _$$PermissionDeniedImplCopyWith<$Res> {
  factory _$$PermissionDeniedImplCopyWith(_$PermissionDeniedImpl value,
          $Res Function(_$PermissionDeniedImpl) then) =
      __$$PermissionDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionDeniedImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$PermissionDeniedImpl>
    implements _$$PermissionDeniedImplCopyWith<$Res> {
  __$$PermissionDeniedImplCopyWithImpl(_$PermissionDeniedImpl _value,
      $Res Function(_$PermissionDeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PermissionDeniedImpl implements _PermissionDenied {
  const _$PermissionDeniedImpl();

  @override
  String toString() {
    return 'LocationState.permissionDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PermissionDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocationModel? locationModel) granted,
    required TResult Function() notGranted,
    required TResult Function() permissionDenied,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return permissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationModel? locationModel)? granted,
    TResult? Function()? notGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return permissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationModel? locationModel)? granted,
    TResult Function()? notGranted,
    TResult Function()? permissionDenied,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_NotGranted value) notGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_NotGranted value)? notGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_NotGranted value)? notGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class _PermissionDenied implements LocationState {
  const factory _PermissionDenied() = _$PermissionDeniedImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LocationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocationModel? locationModel) granted,
    required TResult Function() notGranted,
    required TResult Function() permissionDenied,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationModel? locationModel)? granted,
    TResult? Function()? notGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationModel? locationModel)? granted,
    TResult Function()? notGranted,
    TResult Function()? permissionDenied,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_NotGranted value) notGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_NotGranted value)? notGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_NotGranted value)? notGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LocationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'LocationState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocationModel? locationModel) granted,
    required TResult Function() notGranted,
    required TResult Function() permissionDenied,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationModel? locationModel)? granted,
    TResult? Function()? notGranted,
    TResult? Function()? permissionDenied,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationModel? locationModel)? granted,
    TResult Function()? notGranted,
    TResult Function()? permissionDenied,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Granted value) granted,
    required TResult Function(_NotGranted value) notGranted,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Granted value)? granted,
    TResult? Function(_NotGranted value)? notGranted,
    TResult? Function(_PermissionDenied value)? permissionDenied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Granted value)? granted,
    TResult Function(_NotGranted value)? notGranted,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LocationState {
  const factory _Error() = _$ErrorImpl;
}
