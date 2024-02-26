// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Todo todo) compliteTask,
    required TResult Function(Todo todo) add,
    required TResult Function(Todo todo) update,
    required TResult Function(Todo todo) remove,
    required TResult Function() removeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Todo todo)? compliteTask,
    TResult? Function(Todo todo)? add,
    TResult? Function(Todo todo)? update,
    TResult? Function(Todo todo)? remove,
    TResult? Function()? removeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Todo todo)? compliteTask,
    TResult Function(Todo todo)? add,
    TResult Function(Todo todo)? update,
    TResult Function(Todo todo)? remove,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CompliteTask value) compliteTask,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Remove value) remove,
    required TResult Function(_RemoveAll value) removeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CompliteTask value)? compliteTask,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_RemoveAll value)? removeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CompliteTask value)? compliteTask,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosEventCopyWith<$Res> {
  factory $TodosEventCopyWith(
          TodosEvent value, $Res Function(TodosEvent) then) =
      _$TodosEventCopyWithImpl<$Res, TodosEvent>;
}

/// @nodoc
class _$TodosEventCopyWithImpl<$Res, $Val extends TodosEvent>
    implements $TodosEventCopyWith<$Res> {
  _$TodosEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TodosEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Todo todo) compliteTask,
    required TResult Function(Todo todo) add,
    required TResult Function(Todo todo) update,
    required TResult Function(Todo todo) remove,
    required TResult Function() removeAll,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Todo todo)? compliteTask,
    TResult? Function(Todo todo)? add,
    TResult? Function(Todo todo)? update,
    TResult? Function(Todo todo)? remove,
    TResult? Function()? removeAll,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Todo todo)? compliteTask,
    TResult Function(Todo todo)? add,
    TResult Function(Todo todo)? update,
    TResult Function(Todo todo)? remove,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CompliteTask value) compliteTask,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Remove value) remove,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CompliteTask value)? compliteTask,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_RemoveAll value)? removeAll,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CompliteTask value)? compliteTask,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TodosEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CompliteTaskImplCopyWith<$Res> {
  factory _$$CompliteTaskImplCopyWith(
          _$CompliteTaskImpl value, $Res Function(_$CompliteTaskImpl) then) =
      __$$CompliteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$CompliteTaskImplCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$CompliteTaskImpl>
    implements _$$CompliteTaskImplCopyWith<$Res> {
  __$$CompliteTaskImplCopyWithImpl(
      _$CompliteTaskImpl _value, $Res Function(_$CompliteTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$CompliteTaskImpl(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$CompliteTaskImpl implements _CompliteTask {
  const _$CompliteTaskImpl({required this.todo});

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodosEvent.compliteTask(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompliteTaskImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompliteTaskImplCopyWith<_$CompliteTaskImpl> get copyWith =>
      __$$CompliteTaskImplCopyWithImpl<_$CompliteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Todo todo) compliteTask,
    required TResult Function(Todo todo) add,
    required TResult Function(Todo todo) update,
    required TResult Function(Todo todo) remove,
    required TResult Function() removeAll,
  }) {
    return compliteTask(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Todo todo)? compliteTask,
    TResult? Function(Todo todo)? add,
    TResult? Function(Todo todo)? update,
    TResult? Function(Todo todo)? remove,
    TResult? Function()? removeAll,
  }) {
    return compliteTask?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Todo todo)? compliteTask,
    TResult Function(Todo todo)? add,
    TResult Function(Todo todo)? update,
    TResult Function(Todo todo)? remove,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (compliteTask != null) {
      return compliteTask(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CompliteTask value) compliteTask,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Remove value) remove,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return compliteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CompliteTask value)? compliteTask,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_RemoveAll value)? removeAll,
  }) {
    return compliteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CompliteTask value)? compliteTask,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (compliteTask != null) {
      return compliteTask(this);
    }
    return orElse();
  }
}

abstract class _CompliteTask implements TodosEvent {
  const factory _CompliteTask({required final Todo todo}) = _$CompliteTaskImpl;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$CompliteTaskImplCopyWith<_$CompliteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$AddImpl(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl({required this.todo});

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodosEvent.add(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Todo todo) compliteTask,
    required TResult Function(Todo todo) add,
    required TResult Function(Todo todo) update,
    required TResult Function(Todo todo) remove,
    required TResult Function() removeAll,
  }) {
    return add(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Todo todo)? compliteTask,
    TResult? Function(Todo todo)? add,
    TResult? Function(Todo todo)? update,
    TResult? Function(Todo todo)? remove,
    TResult? Function()? removeAll,
  }) {
    return add?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Todo todo)? compliteTask,
    TResult Function(Todo todo)? add,
    TResult Function(Todo todo)? update,
    TResult Function(Todo todo)? remove,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CompliteTask value) compliteTask,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Remove value) remove,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CompliteTask value)? compliteTask,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_RemoveAll value)? removeAll,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CompliteTask value)? compliteTask,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements TodosEvent {
  const factory _Add({required final Todo todo}) = _$AddImpl;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$UpdateImpl(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl({required this.todo});

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodosEvent.update(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Todo todo) compliteTask,
    required TResult Function(Todo todo) add,
    required TResult Function(Todo todo) update,
    required TResult Function(Todo todo) remove,
    required TResult Function() removeAll,
  }) {
    return update(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Todo todo)? compliteTask,
    TResult? Function(Todo todo)? add,
    TResult? Function(Todo todo)? update,
    TResult? Function(Todo todo)? remove,
    TResult? Function()? removeAll,
  }) {
    return update?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Todo todo)? compliteTask,
    TResult Function(Todo todo)? add,
    TResult Function(Todo todo)? update,
    TResult Function(Todo todo)? remove,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CompliteTask value) compliteTask,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Remove value) remove,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CompliteTask value)? compliteTask,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_RemoveAll value)? removeAll,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CompliteTask value)? compliteTask,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements TodosEvent {
  const factory _Update({required final Todo todo}) = _$UpdateImpl;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveImplCopyWith<$Res> {
  factory _$$RemoveImplCopyWith(
          _$RemoveImpl value, $Res Function(_$RemoveImpl) then) =
      __$$RemoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$RemoveImplCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$RemoveImpl>
    implements _$$RemoveImplCopyWith<$Res> {
  __$$RemoveImplCopyWithImpl(
      _$RemoveImpl _value, $Res Function(_$RemoveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$RemoveImpl(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$RemoveImpl implements _Remove {
  const _$RemoveImpl({required this.todo});

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodosEvent.remove(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveImplCopyWith<_$RemoveImpl> get copyWith =>
      __$$RemoveImplCopyWithImpl<_$RemoveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Todo todo) compliteTask,
    required TResult Function(Todo todo) add,
    required TResult Function(Todo todo) update,
    required TResult Function(Todo todo) remove,
    required TResult Function() removeAll,
  }) {
    return remove(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Todo todo)? compliteTask,
    TResult? Function(Todo todo)? add,
    TResult? Function(Todo todo)? update,
    TResult? Function(Todo todo)? remove,
    TResult? Function()? removeAll,
  }) {
    return remove?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Todo todo)? compliteTask,
    TResult Function(Todo todo)? add,
    TResult Function(Todo todo)? update,
    TResult Function(Todo todo)? remove,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CompliteTask value) compliteTask,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Remove value) remove,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CompliteTask value)? compliteTask,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_RemoveAll value)? removeAll,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CompliteTask value)? compliteTask,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements TodosEvent {
  const factory _Remove({required final Todo todo}) = _$RemoveImpl;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$RemoveImplCopyWith<_$RemoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAllImplCopyWith<$Res> {
  factory _$$RemoveAllImplCopyWith(
          _$RemoveAllImpl value, $Res Function(_$RemoveAllImpl) then) =
      __$$RemoveAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveAllImplCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$RemoveAllImpl>
    implements _$$RemoveAllImplCopyWith<$Res> {
  __$$RemoveAllImplCopyWithImpl(
      _$RemoveAllImpl _value, $Res Function(_$RemoveAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveAllImpl implements _RemoveAll {
  const _$RemoveAllImpl();

  @override
  String toString() {
    return 'TodosEvent.removeAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Todo todo) compliteTask,
    required TResult Function(Todo todo) add,
    required TResult Function(Todo todo) update,
    required TResult Function(Todo todo) remove,
    required TResult Function() removeAll,
  }) {
    return removeAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Todo todo)? compliteTask,
    TResult? Function(Todo todo)? add,
    TResult? Function(Todo todo)? update,
    TResult? Function(Todo todo)? remove,
    TResult? Function()? removeAll,
  }) {
    return removeAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Todo todo)? compliteTask,
    TResult Function(Todo todo)? add,
    TResult Function(Todo todo)? update,
    TResult Function(Todo todo)? remove,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (removeAll != null) {
      return removeAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CompliteTask value) compliteTask,
    required TResult Function(_Add value) add,
    required TResult Function(_Update value) update,
    required TResult Function(_Remove value) remove,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return removeAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CompliteTask value)? compliteTask,
    TResult? Function(_Add value)? add,
    TResult? Function(_Update value)? update,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_RemoveAll value)? removeAll,
  }) {
    return removeAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CompliteTask value)? compliteTask,
    TResult Function(_Add value)? add,
    TResult Function(_Update value)? update,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (removeAll != null) {
      return removeAll(this);
    }
    return orElse();
  }
}

abstract class _RemoveAll implements TodosEvent {
  const factory _RemoveAll() = _$RemoveAllImpl;
}

/// @nodoc
mixin _$TodosState {
  List<Todo> get todoList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Todo> todoList) initial,
    required TResult Function(List<Todo> todoList) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Todo> todoList)? initial,
    TResult? Function(List<Todo> todoList)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Todo> todoList)? initial,
    TResult Function(List<Todo> todoList)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodosStateCopyWith<TodosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res, TodosState>;
  @useResult
  $Res call({List<Todo> todoList});
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res, $Val extends TodosState>
    implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoList = null,
  }) {
    return _then(_value.copyWith(
      todoList: null == todoList
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TodosStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Todo> todoList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoList = null,
  }) {
    return _then(_$InitialImpl(
      todoList: null == todoList
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required final List<Todo> todoList})
      : _todoList = todoList;

  final List<Todo> _todoList;
  @override
  List<Todo> get todoList {
    if (_todoList is EqualUnmodifiableListView) return _todoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoList);
  }

  @override
  String toString() {
    return 'TodosState.initial(todoList: $todoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._todoList, _todoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Todo> todoList) initial,
    required TResult Function(List<Todo> todoList) loading,
  }) {
    return initial(todoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Todo> todoList)? initial,
    TResult? Function(List<Todo> todoList)? loading,
  }) {
    return initial?.call(todoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Todo> todoList)? initial,
    TResult Function(List<Todo> todoList)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(todoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodosState {
  const factory _Initial({required final List<Todo> todoList}) = _$InitialImpl;

  @override
  List<Todo> get todoList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $TodosStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Todo> todoList});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoList = null,
  }) {
    return _then(_$LoadingImpl(
      todoList: null == todoList
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({required final List<Todo> todoList})
      : _todoList = todoList;

  final List<Todo> _todoList;
  @override
  List<Todo> get todoList {
    if (_todoList is EqualUnmodifiableListView) return _todoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoList);
  }

  @override
  String toString() {
    return 'TodosState.loading(todoList: $todoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._todoList, _todoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Todo> todoList) initial,
    required TResult Function(List<Todo> todoList) loading,
  }) {
    return loading(todoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Todo> todoList)? initial,
    TResult? Function(List<Todo> todoList)? loading,
  }) {
    return loading?.call(todoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Todo> todoList)? initial,
    TResult Function(List<Todo> todoList)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(todoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TodosState {
  const factory _Loading({required final List<Todo> todoList}) = _$LoadingImpl;

  @override
  List<Todo> get todoList;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
