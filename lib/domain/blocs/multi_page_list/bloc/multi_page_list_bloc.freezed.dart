// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_page_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MultiPageListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageNumber, int itemCount) started,
    required TResult Function(int pageNumber, int itemCount) changePage,
    required TResult Function(List<Item> items, String countOfElements)
        changeCountOfElements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageNumber, int itemCount)? started,
    TResult? Function(int pageNumber, int itemCount)? changePage,
    TResult? Function(List<Item> items, String countOfElements)?
        changeCountOfElements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageNumber, int itemCount)? started,
    TResult Function(int pageNumber, int itemCount)? changePage,
    TResult Function(List<Item> items, String countOfElements)?
        changeCountOfElements,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_ChangeCountOfElements value)
        changeCountOfElements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_ChangeCountOfElements value)? changeCountOfElements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ChangeCountOfElements value)? changeCountOfElements,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiPageListEventCopyWith<$Res> {
  factory $MultiPageListEventCopyWith(
          MultiPageListEvent value, $Res Function(MultiPageListEvent) then) =
      _$MultiPageListEventCopyWithImpl<$Res, MultiPageListEvent>;
}

/// @nodoc
class _$MultiPageListEventCopyWithImpl<$Res, $Val extends MultiPageListEvent>
    implements $MultiPageListEventCopyWith<$Res> {
  _$MultiPageListEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({int pageNumber, int itemCount});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MultiPageListEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? itemCount = null,
  }) {
    return _then(_$StartedImpl(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.pageNumber, required this.itemCount});

  @override
  final int pageNumber;
  @override
  final int itemCount;

  @override
  String toString() {
    return 'MultiPageListEvent.started(pageNumber: $pageNumber, itemCount: $itemCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, itemCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageNumber, int itemCount) started,
    required TResult Function(int pageNumber, int itemCount) changePage,
    required TResult Function(List<Item> items, String countOfElements)
        changeCountOfElements,
  }) {
    return started(pageNumber, itemCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageNumber, int itemCount)? started,
    TResult? Function(int pageNumber, int itemCount)? changePage,
    TResult? Function(List<Item> items, String countOfElements)?
        changeCountOfElements,
  }) {
    return started?.call(pageNumber, itemCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageNumber, int itemCount)? started,
    TResult Function(int pageNumber, int itemCount)? changePage,
    TResult Function(List<Item> items, String countOfElements)?
        changeCountOfElements,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(pageNumber, itemCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_ChangeCountOfElements value)
        changeCountOfElements,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_ChangeCountOfElements value)? changeCountOfElements,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ChangeCountOfElements value)? changeCountOfElements,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MultiPageListEvent {
  const factory _Started(
      {required final int pageNumber,
      required final int itemCount}) = _$StartedImpl;

  int get pageNumber;
  int get itemCount;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePageImplCopyWith<$Res> {
  factory _$$ChangePageImplCopyWith(
          _$ChangePageImpl value, $Res Function(_$ChangePageImpl) then) =
      __$$ChangePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageNumber, int itemCount});
}

/// @nodoc
class __$$ChangePageImplCopyWithImpl<$Res>
    extends _$MultiPageListEventCopyWithImpl<$Res, _$ChangePageImpl>
    implements _$$ChangePageImplCopyWith<$Res> {
  __$$ChangePageImplCopyWithImpl(
      _$ChangePageImpl _value, $Res Function(_$ChangePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? itemCount = null,
  }) {
    return _then(_$ChangePageImpl(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangePageImpl implements _ChangePage {
  const _$ChangePageImpl({required this.pageNumber, required this.itemCount});

  @override
  final int pageNumber;
  @override
  final int itemCount;

  @override
  String toString() {
    return 'MultiPageListEvent.changePage(pageNumber: $pageNumber, itemCount: $itemCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, itemCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      __$$ChangePageImplCopyWithImpl<_$ChangePageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageNumber, int itemCount) started,
    required TResult Function(int pageNumber, int itemCount) changePage,
    required TResult Function(List<Item> items, String countOfElements)
        changeCountOfElements,
  }) {
    return changePage(pageNumber, itemCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageNumber, int itemCount)? started,
    TResult? Function(int pageNumber, int itemCount)? changePage,
    TResult? Function(List<Item> items, String countOfElements)?
        changeCountOfElements,
  }) {
    return changePage?.call(pageNumber, itemCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageNumber, int itemCount)? started,
    TResult Function(int pageNumber, int itemCount)? changePage,
    TResult Function(List<Item> items, String countOfElements)?
        changeCountOfElements,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(pageNumber, itemCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_ChangeCountOfElements value)
        changeCountOfElements,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_ChangeCountOfElements value)? changeCountOfElements,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ChangeCountOfElements value)? changeCountOfElements,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class _ChangePage implements MultiPageListEvent {
  const factory _ChangePage(
      {required final int pageNumber,
      required final int itemCount}) = _$ChangePageImpl;

  int get pageNumber;
  int get itemCount;
  @JsonKey(ignore: true)
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCountOfElementsImplCopyWith<$Res> {
  factory _$$ChangeCountOfElementsImplCopyWith(
          _$ChangeCountOfElementsImpl value,
          $Res Function(_$ChangeCountOfElementsImpl) then) =
      __$$ChangeCountOfElementsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Item> items, String countOfElements});
}

/// @nodoc
class __$$ChangeCountOfElementsImplCopyWithImpl<$Res>
    extends _$MultiPageListEventCopyWithImpl<$Res, _$ChangeCountOfElementsImpl>
    implements _$$ChangeCountOfElementsImplCopyWith<$Res> {
  __$$ChangeCountOfElementsImplCopyWithImpl(_$ChangeCountOfElementsImpl _value,
      $Res Function(_$ChangeCountOfElementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? countOfElements = null,
  }) {
    return _then(_$ChangeCountOfElementsImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      countOfElements: null == countOfElements
          ? _value.countOfElements
          : countOfElements // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeCountOfElementsImpl implements _ChangeCountOfElements {
  const _$ChangeCountOfElementsImpl(
      {required final List<Item> items, required this.countOfElements})
      : _items = items;

  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String countOfElements;

  @override
  String toString() {
    return 'MultiPageListEvent.changeCountOfElements(items: $items, countOfElements: $countOfElements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCountOfElementsImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.countOfElements, countOfElements) ||
                other.countOfElements == countOfElements));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), countOfElements);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCountOfElementsImplCopyWith<_$ChangeCountOfElementsImpl>
      get copyWith => __$$ChangeCountOfElementsImplCopyWithImpl<
          _$ChangeCountOfElementsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageNumber, int itemCount) started,
    required TResult Function(int pageNumber, int itemCount) changePage,
    required TResult Function(List<Item> items, String countOfElements)
        changeCountOfElements,
  }) {
    return changeCountOfElements(items, countOfElements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageNumber, int itemCount)? started,
    TResult? Function(int pageNumber, int itemCount)? changePage,
    TResult? Function(List<Item> items, String countOfElements)?
        changeCountOfElements,
  }) {
    return changeCountOfElements?.call(items, countOfElements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageNumber, int itemCount)? started,
    TResult Function(int pageNumber, int itemCount)? changePage,
    TResult Function(List<Item> items, String countOfElements)?
        changeCountOfElements,
    required TResult orElse(),
  }) {
    if (changeCountOfElements != null) {
      return changeCountOfElements(items, countOfElements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_ChangeCountOfElements value)
        changeCountOfElements,
  }) {
    return changeCountOfElements(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_ChangeCountOfElements value)? changeCountOfElements,
  }) {
    return changeCountOfElements?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ChangeCountOfElements value)? changeCountOfElements,
    required TResult orElse(),
  }) {
    if (changeCountOfElements != null) {
      return changeCountOfElements(this);
    }
    return orElse();
  }
}

abstract class _ChangeCountOfElements implements MultiPageListEvent {
  const factory _ChangeCountOfElements(
      {required final List<Item> items,
      required final String countOfElements}) = _$ChangeCountOfElementsImpl;

  List<Item> get items;
  String get countOfElements;
  @JsonKey(ignore: true)
  _$$ChangeCountOfElementsImplCopyWith<_$ChangeCountOfElementsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MultiPageListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Item> items, int currentPage, int itemsPerPage)
        list,
    required TResult Function(List<Item> previosItems, List<Item> currentItems)
        loadingNewPage,
    required TResult Function(List<Item> items) loading,
    required TResult Function(List<Item> items, String errorText) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items, int currentPage, int itemsPerPage)?
        list,
    TResult? Function(List<Item> previosItems, List<Item> currentItems)?
        loadingNewPage,
    TResult? Function(List<Item> items)? loading,
    TResult? Function(List<Item> items, String errorText)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items, int currentPage, int itemsPerPage)? list,
    TResult Function(List<Item> previosItems, List<Item> currentItems)?
        loadingNewPage,
    TResult Function(List<Item> items)? loading,
    TResult Function(List<Item> items, String errorText)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_List value) list,
    required TResult Function(_LoadingNewPage value) loadingNewPage,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_List value)? list,
    TResult? Function(_LoadingNewPage value)? loadingNewPage,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_List value)? list,
    TResult Function(_LoadingNewPage value)? loadingNewPage,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiPageListStateCopyWith<$Res> {
  factory $MultiPageListStateCopyWith(
          MultiPageListState value, $Res Function(MultiPageListState) then) =
      _$MultiPageListStateCopyWithImpl<$Res, MultiPageListState>;
}

/// @nodoc
class _$MultiPageListStateCopyWithImpl<$Res, $Val extends MultiPageListState>
    implements $MultiPageListStateCopyWith<$Res> {
  _$MultiPageListStateCopyWithImpl(this._value, this._then);

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
    extends _$MultiPageListStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MultiPageListState.initial()';
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
    required TResult Function(
            List<Item> items, int currentPage, int itemsPerPage)
        list,
    required TResult Function(List<Item> previosItems, List<Item> currentItems)
        loadingNewPage,
    required TResult Function(List<Item> items) loading,
    required TResult Function(List<Item> items, String errorText) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items, int currentPage, int itemsPerPage)?
        list,
    TResult? Function(List<Item> previosItems, List<Item> currentItems)?
        loadingNewPage,
    TResult? Function(List<Item> items)? loading,
    TResult? Function(List<Item> items, String errorText)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items, int currentPage, int itemsPerPage)? list,
    TResult Function(List<Item> previosItems, List<Item> currentItems)?
        loadingNewPage,
    TResult Function(List<Item> items)? loading,
    TResult Function(List<Item> items, String errorText)? failure,
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
    required TResult Function(_LoadingNewPage value) loadingNewPage,
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
    TResult? Function(_LoadingNewPage value)? loadingNewPage,
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
    TResult Function(_LoadingNewPage value)? loadingNewPage,
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

abstract class _Initial extends MultiPageListState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$ListImplCopyWith<$Res> {
  factory _$$ListImplCopyWith(
          _$ListImpl value, $Res Function(_$ListImpl) then) =
      __$$ListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Item> items, int currentPage, int itemsPerPage});
}

/// @nodoc
class __$$ListImplCopyWithImpl<$Res>
    extends _$MultiPageListStateCopyWithImpl<$Res, _$ListImpl>
    implements _$$ListImplCopyWith<$Res> {
  __$$ListImplCopyWithImpl(_$ListImpl _value, $Res Function(_$ListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? currentPage = null,
    Object? itemsPerPage = null,
  }) {
    return _then(_$ListImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListImpl extends _List {
  const _$ListImpl(
      {required final List<Item> items,
      required this.currentPage,
      required this.itemsPerPage})
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
  final int currentPage;
  @override
  final int itemsPerPage;

  @override
  String toString() {
    return 'MultiPageListState.list(items: $items, currentPage: $currentPage, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), currentPage, itemsPerPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListImplCopyWith<_$ListImpl> get copyWith =>
      __$$ListImplCopyWithImpl<_$ListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Item> items, int currentPage, int itemsPerPage)
        list,
    required TResult Function(List<Item> previosItems, List<Item> currentItems)
        loadingNewPage,
    required TResult Function(List<Item> items) loading,
    required TResult Function(List<Item> items, String errorText) failure,
  }) {
    return list(items, currentPage, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items, int currentPage, int itemsPerPage)?
        list,
    TResult? Function(List<Item> previosItems, List<Item> currentItems)?
        loadingNewPage,
    TResult? Function(List<Item> items)? loading,
    TResult? Function(List<Item> items, String errorText)? failure,
  }) {
    return list?.call(items, currentPage, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items, int currentPage, int itemsPerPage)? list,
    TResult Function(List<Item> previosItems, List<Item> currentItems)?
        loadingNewPage,
    TResult Function(List<Item> items)? loading,
    TResult Function(List<Item> items, String errorText)? failure,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(items, currentPage, itemsPerPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_List value) list,
    required TResult Function(_LoadingNewPage value) loadingNewPage,
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
    TResult? Function(_LoadingNewPage value)? loadingNewPage,
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
    TResult Function(_LoadingNewPage value)? loadingNewPage,
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

abstract class _List extends MultiPageListState {
  const factory _List(
      {required final List<Item> items,
      required final int currentPage,
      required final int itemsPerPage}) = _$ListImpl;
  const _List._() : super._();

  List<Item> get items;
  int get currentPage;
  int get itemsPerPage;
  @JsonKey(ignore: true)
  _$$ListImplCopyWith<_$ListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingNewPageImplCopyWith<$Res> {
  factory _$$LoadingNewPageImplCopyWith(_$LoadingNewPageImpl value,
          $Res Function(_$LoadingNewPageImpl) then) =
      __$$LoadingNewPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Item> previosItems, List<Item> currentItems});
}

/// @nodoc
class __$$LoadingNewPageImplCopyWithImpl<$Res>
    extends _$MultiPageListStateCopyWithImpl<$Res, _$LoadingNewPageImpl>
    implements _$$LoadingNewPageImplCopyWith<$Res> {
  __$$LoadingNewPageImplCopyWithImpl(
      _$LoadingNewPageImpl _value, $Res Function(_$LoadingNewPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previosItems = null,
    Object? currentItems = null,
  }) {
    return _then(_$LoadingNewPageImpl(
      previosItems: null == previosItems
          ? _value._previosItems
          : previosItems // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      currentItems: null == currentItems
          ? _value._currentItems
          : currentItems // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$LoadingNewPageImpl extends _LoadingNewPage {
  const _$LoadingNewPageImpl(
      {required final List<Item> previosItems,
      required final List<Item> currentItems})
      : _previosItems = previosItems,
        _currentItems = currentItems,
        super._();

  final List<Item> _previosItems;
  @override
  List<Item> get previosItems {
    if (_previosItems is EqualUnmodifiableListView) return _previosItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previosItems);
  }

  final List<Item> _currentItems;
  @override
  List<Item> get currentItems {
    if (_currentItems is EqualUnmodifiableListView) return _currentItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentItems);
  }

  @override
  String toString() {
    return 'MultiPageListState.loadingNewPage(previosItems: $previosItems, currentItems: $currentItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingNewPageImpl &&
            const DeepCollectionEquality()
                .equals(other._previosItems, _previosItems) &&
            const DeepCollectionEquality()
                .equals(other._currentItems, _currentItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_previosItems),
      const DeepCollectionEquality().hash(_currentItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingNewPageImplCopyWith<_$LoadingNewPageImpl> get copyWith =>
      __$$LoadingNewPageImplCopyWithImpl<_$LoadingNewPageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Item> items, int currentPage, int itemsPerPage)
        list,
    required TResult Function(List<Item> previosItems, List<Item> currentItems)
        loadingNewPage,
    required TResult Function(List<Item> items) loading,
    required TResult Function(List<Item> items, String errorText) failure,
  }) {
    return loadingNewPage(previosItems, currentItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items, int currentPage, int itemsPerPage)?
        list,
    TResult? Function(List<Item> previosItems, List<Item> currentItems)?
        loadingNewPage,
    TResult? Function(List<Item> items)? loading,
    TResult? Function(List<Item> items, String errorText)? failure,
  }) {
    return loadingNewPage?.call(previosItems, currentItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items, int currentPage, int itemsPerPage)? list,
    TResult Function(List<Item> previosItems, List<Item> currentItems)?
        loadingNewPage,
    TResult Function(List<Item> items)? loading,
    TResult Function(List<Item> items, String errorText)? failure,
    required TResult orElse(),
  }) {
    if (loadingNewPage != null) {
      return loadingNewPage(previosItems, currentItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_List value) list,
    required TResult Function(_LoadingNewPage value) loadingNewPage,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return loadingNewPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_List value)? list,
    TResult? Function(_LoadingNewPage value)? loadingNewPage,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadingNewPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_List value)? list,
    TResult Function(_LoadingNewPage value)? loadingNewPage,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadingNewPage != null) {
      return loadingNewPage(this);
    }
    return orElse();
  }
}

abstract class _LoadingNewPage extends MultiPageListState {
  const factory _LoadingNewPage(
      {required final List<Item> previosItems,
      required final List<Item> currentItems}) = _$LoadingNewPageImpl;
  const _LoadingNewPage._() : super._();

  List<Item> get previosItems;
  List<Item> get currentItems;
  @JsonKey(ignore: true)
  _$$LoadingNewPageImplCopyWith<_$LoadingNewPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Item> items});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MultiPageListStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$LoadingImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl({required final List<Item> items})
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
    return 'MultiPageListState.loading(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Item> items, int currentPage, int itemsPerPage)
        list,
    required TResult Function(List<Item> previosItems, List<Item> currentItems)
        loadingNewPage,
    required TResult Function(List<Item> items) loading,
    required TResult Function(List<Item> items, String errorText) failure,
  }) {
    return loading(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items, int currentPage, int itemsPerPage)?
        list,
    TResult? Function(List<Item> previosItems, List<Item> currentItems)?
        loadingNewPage,
    TResult? Function(List<Item> items)? loading,
    TResult? Function(List<Item> items, String errorText)? failure,
  }) {
    return loading?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items, int currentPage, int itemsPerPage)? list,
    TResult Function(List<Item> previosItems, List<Item> currentItems)?
        loadingNewPage,
    TResult Function(List<Item> items)? loading,
    TResult Function(List<Item> items, String errorText)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_List value) list,
    required TResult Function(_LoadingNewPage value) loadingNewPage,
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
    TResult? Function(_LoadingNewPage value)? loadingNewPage,
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
    TResult Function(_LoadingNewPage value)? loadingNewPage,
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

abstract class _Loading extends MultiPageListState {
  const factory _Loading({required final List<Item> items}) = _$LoadingImpl;
  const _Loading._() : super._();

  List<Item> get items;
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Item> items, String errorText});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$MultiPageListStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? errorText = null,
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
    ));
  }
}

/// @nodoc

class _$FailureImpl extends _Failure {
  const _$FailureImpl(
      {required final List<Item> items, required this.errorText})
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
  String toString() {
    return 'MultiPageListState.failure(items: $items, errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Item> items, int currentPage, int itemsPerPage)
        list,
    required TResult Function(List<Item> previosItems, List<Item> currentItems)
        loadingNewPage,
    required TResult Function(List<Item> items) loading,
    required TResult Function(List<Item> items, String errorText) failure,
  }) {
    return failure(items, errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items, int currentPage, int itemsPerPage)?
        list,
    TResult? Function(List<Item> previosItems, List<Item> currentItems)?
        loadingNewPage,
    TResult? Function(List<Item> items)? loading,
    TResult? Function(List<Item> items, String errorText)? failure,
  }) {
    return failure?.call(items, errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items, int currentPage, int itemsPerPage)? list,
    TResult Function(List<Item> previosItems, List<Item> currentItems)?
        loadingNewPage,
    TResult Function(List<Item> items)? loading,
    TResult Function(List<Item> items, String errorText)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(items, errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_List value) list,
    required TResult Function(_LoadingNewPage value) loadingNewPage,
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
    TResult? Function(_LoadingNewPage value)? loadingNewPage,
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
    TResult Function(_LoadingNewPage value)? loadingNewPage,
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

abstract class _Failure extends MultiPageListState {
  const factory _Failure(
      {required final List<Item> items,
      required final String errorText}) = _$FailureImpl;
  const _Failure._() : super._();

  List<Item> get items;
  String get errorText;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
