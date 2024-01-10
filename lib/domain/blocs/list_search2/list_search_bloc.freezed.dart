// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function(String searchString) sendSearchString,
    required TResult Function(Item item) updateList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String searchString)? searchStringChanged,
    TResult? Function(String searchString)? sendSearchString,
    TResult? Function(Item item)? updateList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function(String searchString)? sendSearchString,
    TResult Function(Item item)? updateList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_SearchStringChanged value) searchStringChanged,
    required TResult Function(_SendSearchString value) sendSearchString,
    required TResult Function(_UpdateList value) updateList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_SearchStringChanged value)? searchStringChanged,
    TResult? Function(_SendSearchString value)? sendSearchString,
    TResult? Function(_UpdateList value)? updateList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_SendSearchString value)? sendSearchString,
    TResult Function(_UpdateList value)? updateList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSearchEventCopyWith<$Res> {
  factory $ListSearchEventCopyWith(
          ListSearchEvent value, $Res Function(ListSearchEvent) then) =
      _$ListSearchEventCopyWithImpl<$Res, ListSearchEvent>;
}

/// @nodoc
class _$ListSearchEventCopyWithImpl<$Res, $Val extends ListSearchEvent>
    implements $ListSearchEventCopyWith<$Res> {
  _$ListSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$ListSearchEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'ListSearchEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function(String searchString) sendSearchString,
    required TResult Function(Item item) updateList,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String searchString)? searchStringChanged,
    TResult? Function(String searchString)? sendSearchString,
    TResult? Function(Item item)? updateList,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function(String searchString)? sendSearchString,
    TResult Function(Item item)? updateList,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_SearchStringChanged value) searchStringChanged,
    required TResult Function(_SendSearchString value) sendSearchString,
    required TResult Function(_UpdateList value) updateList,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_SearchStringChanged value)? searchStringChanged,
    TResult? Function(_SendSearchString value)? sendSearchString,
    TResult? Function(_UpdateList value)? updateList,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_SendSearchString value)? sendSearchString,
    TResult Function(_UpdateList value)? updateList,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements ListSearchEvent {
  const factory _Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$SearchStringChangedImplCopyWith<$Res> {
  factory _$$SearchStringChangedImplCopyWith(_$SearchStringChangedImpl value,
          $Res Function(_$SearchStringChangedImpl) then) =
      __$$SearchStringChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchString});
}

/// @nodoc
class __$$SearchStringChangedImplCopyWithImpl<$Res>
    extends _$ListSearchEventCopyWithImpl<$Res, _$SearchStringChangedImpl>
    implements _$$SearchStringChangedImplCopyWith<$Res> {
  __$$SearchStringChangedImplCopyWithImpl(_$SearchStringChangedImpl _value,
      $Res Function(_$SearchStringChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchString = null,
  }) {
    return _then(_$SearchStringChangedImpl(
      searchString: null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStringChangedImpl implements _SearchStringChanged {
  const _$SearchStringChangedImpl({required this.searchString});

  @override
  final String searchString;

  @override
  String toString() {
    return 'ListSearchEvent.searchStringChanged(searchString: $searchString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStringChangedImpl &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStringChangedImplCopyWith<_$SearchStringChangedImpl> get copyWith =>
      __$$SearchStringChangedImplCopyWithImpl<_$SearchStringChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function(String searchString) sendSearchString,
    required TResult Function(Item item) updateList,
  }) {
    return searchStringChanged(searchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String searchString)? searchStringChanged,
    TResult? Function(String searchString)? sendSearchString,
    TResult? Function(Item item)? updateList,
  }) {
    return searchStringChanged?.call(searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function(String searchString)? sendSearchString,
    TResult Function(Item item)? updateList,
    required TResult orElse(),
  }) {
    if (searchStringChanged != null) {
      return searchStringChanged(searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_SearchStringChanged value) searchStringChanged,
    required TResult Function(_SendSearchString value) sendSearchString,
    required TResult Function(_UpdateList value) updateList,
  }) {
    return searchStringChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_SearchStringChanged value)? searchStringChanged,
    TResult? Function(_SendSearchString value)? sendSearchString,
    TResult? Function(_UpdateList value)? updateList,
  }) {
    return searchStringChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_SendSearchString value)? sendSearchString,
    TResult Function(_UpdateList value)? updateList,
    required TResult orElse(),
  }) {
    if (searchStringChanged != null) {
      return searchStringChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchStringChanged implements ListSearchEvent {
  const factory _SearchStringChanged({required final String searchString}) =
      _$SearchStringChangedImpl;

  String get searchString;
  @JsonKey(ignore: true)
  _$$SearchStringChangedImplCopyWith<_$SearchStringChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendSearchStringImplCopyWith<$Res> {
  factory _$$SendSearchStringImplCopyWith(_$SendSearchStringImpl value,
          $Res Function(_$SendSearchStringImpl) then) =
      __$$SendSearchStringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchString});
}

/// @nodoc
class __$$SendSearchStringImplCopyWithImpl<$Res>
    extends _$ListSearchEventCopyWithImpl<$Res, _$SendSearchStringImpl>
    implements _$$SendSearchStringImplCopyWith<$Res> {
  __$$SendSearchStringImplCopyWithImpl(_$SendSearchStringImpl _value,
      $Res Function(_$SendSearchStringImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchString = null,
  }) {
    return _then(_$SendSearchStringImpl(
      searchString: null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendSearchStringImpl implements _SendSearchString {
  const _$SendSearchStringImpl({required this.searchString});

//example - search button
  @override
  final String searchString;

  @override
  String toString() {
    return 'ListSearchEvent.sendSearchString(searchString: $searchString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendSearchStringImpl &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendSearchStringImplCopyWith<_$SendSearchStringImpl> get copyWith =>
      __$$SendSearchStringImplCopyWithImpl<_$SendSearchStringImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function(String searchString) sendSearchString,
    required TResult Function(Item item) updateList,
  }) {
    return sendSearchString(searchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String searchString)? searchStringChanged,
    TResult? Function(String searchString)? sendSearchString,
    TResult? Function(Item item)? updateList,
  }) {
    return sendSearchString?.call(searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function(String searchString)? sendSearchString,
    TResult Function(Item item)? updateList,
    required TResult orElse(),
  }) {
    if (sendSearchString != null) {
      return sendSearchString(searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_SearchStringChanged value) searchStringChanged,
    required TResult Function(_SendSearchString value) sendSearchString,
    required TResult Function(_UpdateList value) updateList,
  }) {
    return sendSearchString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_SearchStringChanged value)? searchStringChanged,
    TResult? Function(_SendSearchString value)? sendSearchString,
    TResult? Function(_UpdateList value)? updateList,
  }) {
    return sendSearchString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_SendSearchString value)? sendSearchString,
    TResult Function(_UpdateList value)? updateList,
    required TResult orElse(),
  }) {
    if (sendSearchString != null) {
      return sendSearchString(this);
    }
    return orElse();
  }
}

abstract class _SendSearchString implements ListSearchEvent {
  const factory _SendSearchString({required final String searchString}) =
      _$SendSearchStringImpl;

//example - search button
  String get searchString;
  @JsonKey(ignore: true)
  _$$SendSearchStringImplCopyWith<_$SendSearchStringImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateListImplCopyWith<$Res> {
  factory _$$UpdateListImplCopyWith(
          _$UpdateListImpl value, $Res Function(_$UpdateListImpl) then) =
      __$$UpdateListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$UpdateListImplCopyWithImpl<$Res>
    extends _$ListSearchEventCopyWithImpl<$Res, _$UpdateListImpl>
    implements _$$UpdateListImplCopyWith<$Res> {
  __$$UpdateListImplCopyWithImpl(
      _$UpdateListImpl _value, $Res Function(_$UpdateListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$UpdateListImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$UpdateListImpl implements _UpdateList {
  const _$UpdateListImpl({required this.item});

  @override
  final Item item;

  @override
  String toString() {
    return 'ListSearchEvent.updateList(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateListImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateListImplCopyWith<_$UpdateListImpl> get copyWith =>
      __$$UpdateListImplCopyWithImpl<_$UpdateListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String searchString) searchStringChanged,
    required TResult Function(String searchString) sendSearchString,
    required TResult Function(Item item) updateList,
  }) {
    return updateList(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String searchString)? searchStringChanged,
    TResult? Function(String searchString)? sendSearchString,
    TResult? Function(Item item)? updateList,
  }) {
    return updateList?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchString)? searchStringChanged,
    TResult Function(String searchString)? sendSearchString,
    TResult Function(Item item)? updateList,
    required TResult orElse(),
  }) {
    if (updateList != null) {
      return updateList(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_SearchStringChanged value) searchStringChanged,
    required TResult Function(_SendSearchString value) sendSearchString,
    required TResult Function(_UpdateList value) updateList,
  }) {
    return updateList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_SearchStringChanged value)? searchStringChanged,
    TResult? Function(_SendSearchString value)? sendSearchString,
    TResult? Function(_UpdateList value)? updateList,
  }) {
    return updateList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_SearchStringChanged value)? searchStringChanged,
    TResult Function(_SendSearchString value)? sendSearchString,
    TResult Function(_UpdateList value)? updateList,
    required TResult orElse(),
  }) {
    if (updateList != null) {
      return updateList(this);
    }
    return orElse();
  }
}

abstract class _UpdateList implements ListSearchEvent {
  const factory _UpdateList({required final Item item}) = _$UpdateListImpl;

  Item get item;
  @JsonKey(ignore: true)
  _$$UpdateListImplCopyWith<_$UpdateListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Item> items) list,
    required TResult Function(String searchString) searchInput,
    required TResult Function() loading,
    required TResult Function(
            List<Item> items, String errorText, String? searchString)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items)? list,
    TResult? Function(String searchString)? searchInput,
    TResult? Function()? loading,
    TResult? Function(List<Item> items, String errorText, String? searchString)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items)? list,
    TResult Function(String searchString)? searchInput,
    TResult Function()? loading,
    TResult Function(List<Item> items, String errorText, String? searchString)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_List value) list,
    required TResult Function(_SearchInput value) searchInput,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_List value)? list,
    TResult? Function(_SearchInput value)? searchInput,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_List value)? list,
    TResult Function(_SearchInput value)? searchInput,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSearchStateCopyWith<$Res> {
  factory $ListSearchStateCopyWith(
          ListSearchState value, $Res Function(ListSearchState) then) =
      _$ListSearchStateCopyWithImpl<$Res, ListSearchState>;
}

/// @nodoc
class _$ListSearchStateCopyWithImpl<$Res, $Val extends ListSearchState>
    implements $ListSearchStateCopyWith<$Res> {
  _$ListSearchStateCopyWithImpl(this._value, this._then);

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
    extends _$ListSearchStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'ListSearchState.initial()';
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
    required TResult Function(List<Item> items) list,
    required TResult Function(String searchString) searchInput,
    required TResult Function() loading,
    required TResult Function(
            List<Item> items, String errorText, String? searchString)
        failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items)? list,
    TResult? Function(String searchString)? searchInput,
    TResult? Function()? loading,
    TResult? Function(List<Item> items, String errorText, String? searchString)?
        failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items)? list,
    TResult Function(String searchString)? searchInput,
    TResult Function()? loading,
    TResult Function(List<Item> items, String errorText, String? searchString)?
        failure,
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
    required TResult Function(_List value) list,
    required TResult Function(_SearchInput value) searchInput,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_List value)? list,
    TResult? Function(_SearchInput value)? searchInput,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_List value)? list,
    TResult Function(_SearchInput value)? searchInput,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ListSearchState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$ListImplCopyWith<$Res> {
  factory _$$ListImplCopyWith(
          _$ListImpl value, $Res Function(_$ListImpl) then) =
      __$$ListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Item> items});
}

/// @nodoc
class __$$ListImplCopyWithImpl<$Res>
    extends _$ListSearchStateCopyWithImpl<$Res, _$ListImpl>
    implements _$$ListImplCopyWith<$Res> {
  __$$ListImplCopyWithImpl(_$ListImpl _value, $Res Function(_$ListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$ListImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$ListImpl extends _List {
  const _$ListImpl({required final List<Item> items})
      : _items = items,
        super._();

  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ListSearchState.list(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListImplCopyWith<_$ListImpl> get copyWith =>
      __$$ListImplCopyWithImpl<_$ListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Item> items) list,
    required TResult Function(String searchString) searchInput,
    required TResult Function() loading,
    required TResult Function(
            List<Item> items, String errorText, String? searchString)
        failure,
  }) {
    return list(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items)? list,
    TResult? Function(String searchString)? searchInput,
    TResult? Function()? loading,
    TResult? Function(List<Item> items, String errorText, String? searchString)?
        failure,
  }) {
    return list?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items)? list,
    TResult Function(String searchString)? searchInput,
    TResult Function()? loading,
    TResult Function(List<Item> items, String errorText, String? searchString)?
        failure,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_List value) list,
    required TResult Function(_SearchInput value) searchInput,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_List value)? list,
    TResult? Function(_SearchInput value)? searchInput,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_List value)? list,
    TResult Function(_SearchInput value)? searchInput,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class _List extends ListSearchState {
  const factory _List({required final List<Item> items}) = _$ListImpl;
  const _List._() : super._();

  List<Item> get items;
  @JsonKey(ignore: true)
  _$$ListImplCopyWith<_$ListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchInputImplCopyWith<$Res> {
  factory _$$SearchInputImplCopyWith(
          _$SearchInputImpl value, $Res Function(_$SearchInputImpl) then) =
      __$$SearchInputImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchString});
}

/// @nodoc
class __$$SearchInputImplCopyWithImpl<$Res>
    extends _$ListSearchStateCopyWithImpl<$Res, _$SearchInputImpl>
    implements _$$SearchInputImplCopyWith<$Res> {
  __$$SearchInputImplCopyWithImpl(
      _$SearchInputImpl _value, $Res Function(_$SearchInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchString = null,
  }) {
    return _then(_$SearchInputImpl(
      searchString: null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchInputImpl extends _SearchInput {
  const _$SearchInputImpl({required this.searchString}) : super._();

  @override
  final String searchString;

  @override
  String toString() {
    return 'ListSearchState.searchInput(searchString: $searchString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchInputImpl &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchInputImplCopyWith<_$SearchInputImpl> get copyWith =>
      __$$SearchInputImplCopyWithImpl<_$SearchInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Item> items) list,
    required TResult Function(String searchString) searchInput,
    required TResult Function() loading,
    required TResult Function(
            List<Item> items, String errorText, String? searchString)
        failure,
  }) {
    return searchInput(searchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items)? list,
    TResult? Function(String searchString)? searchInput,
    TResult? Function()? loading,
    TResult? Function(List<Item> items, String errorText, String? searchString)?
        failure,
  }) {
    return searchInput?.call(searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items)? list,
    TResult Function(String searchString)? searchInput,
    TResult Function()? loading,
    TResult Function(List<Item> items, String errorText, String? searchString)?
        failure,
    required TResult orElse(),
  }) {
    if (searchInput != null) {
      return searchInput(searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_List value) list,
    required TResult Function(_SearchInput value) searchInput,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return searchInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_List value)? list,
    TResult? Function(_SearchInput value)? searchInput,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return searchInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_List value)? list,
    TResult Function(_SearchInput value)? searchInput,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (searchInput != null) {
      return searchInput(this);
    }
    return orElse();
  }
}

abstract class _SearchInput extends ListSearchState {
  const factory _SearchInput({required final String searchString}) =
      _$SearchInputImpl;
  const _SearchInput._() : super._();

  String get searchString;
  @JsonKey(ignore: true)
  _$$SearchInputImplCopyWith<_$SearchInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ListSearchStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'ListSearchState.loading()';
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
    required TResult Function(List<Item> items) list,
    required TResult Function(String searchString) searchInput,
    required TResult Function() loading,
    required TResult Function(
            List<Item> items, String errorText, String? searchString)
        failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items)? list,
    TResult? Function(String searchString)? searchInput,
    TResult? Function()? loading,
    TResult? Function(List<Item> items, String errorText, String? searchString)?
        failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items)? list,
    TResult Function(String searchString)? searchInput,
    TResult Function()? loading,
    TResult Function(List<Item> items, String errorText, String? searchString)?
        failure,
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
    required TResult Function(_List value) list,
    required TResult Function(_SearchInput value) searchInput,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_List value)? list,
    TResult? Function(_SearchInput value)? searchInput,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_List value)? list,
    TResult Function(_SearchInput value)? searchInput,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends ListSearchState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Item> items, String errorText, String? searchString});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$ListSearchStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? errorText = null,
    Object? searchString = freezed,
  }) {
    return _then(_$FailureImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
      searchString: freezed == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureImpl extends _Failure {
  const _$FailureImpl(
      {required final List<Item> items,
      required this.errorText,
      this.searchString})
      : _items = items,
        super._();

  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String errorText;
  @override
  final String? searchString;

  @override
  String toString() {
    return 'ListSearchState.failure(items: $items, errorText: $errorText, searchString: $searchString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), errorText, searchString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Item> items) list,
    required TResult Function(String searchString) searchInput,
    required TResult Function() loading,
    required TResult Function(
            List<Item> items, String errorText, String? searchString)
        failure,
  }) {
    return failure(items, errorText, searchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items)? list,
    TResult? Function(String searchString)? searchInput,
    TResult? Function()? loading,
    TResult? Function(List<Item> items, String errorText, String? searchString)?
        failure,
  }) {
    return failure?.call(items, errorText, searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items)? list,
    TResult Function(String searchString)? searchInput,
    TResult Function()? loading,
    TResult Function(List<Item> items, String errorText, String? searchString)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(items, errorText, searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_List value) list,
    required TResult Function(_SearchInput value) searchInput,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_List value)? list,
    TResult? Function(_SearchInput value)? searchInput,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_List value)? list,
    TResult Function(_SearchInput value)? searchInput,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends ListSearchState {
  const factory _Failure(
      {required final List<Item> items,
      required final String errorText,
      final String? searchString}) = _$FailureImpl;
  const _Failure._() : super._();

  List<Item> get items;
  String get errorText;
  String? get searchString;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
