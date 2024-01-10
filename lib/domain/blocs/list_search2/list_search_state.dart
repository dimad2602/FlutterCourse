part of 'list_search_bloc.dart';

@freezed
class ListSearchState with _$ListSearchState {
  const ListSearchState._();

  const factory ListSearchState.initial() = _Initial;
  const factory ListSearchState.list({
    required List<Item> items,
  }) = _List;
  const factory ListSearchState.searchInput({
    required String searchString,
  }) = _SearchInput;
  const factory ListSearchState.loading() = _Loading;
  const factory ListSearchState.failure({
    required List<Item> items,
    required String errorText,
    String? searchString,
  }) = _Failure;

  List<Item>? get Items {
    return mapOrNull(
        //initial: () => null,
        list: (value) => value.items,
        //searchInput: searchInput,
        //loading: loading,
        failure: (value) => value.items
    );
  }
}
