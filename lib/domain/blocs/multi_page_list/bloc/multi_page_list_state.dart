part of 'multi_page_list_bloc.dart';

@freezed
class MultiPageListState with _$MultiPageListState {
  const MultiPageListState._();

  const factory MultiPageListState.initial() = _Initial;

  const factory MultiPageListState.list({
    required List<Item> items,
    required int currentPage,
    required int itemsPerPage,
  }) = _List;

  const factory MultiPageListState.loadingNewPage({
    required List<Item> previosItems,
    required List<Item> currentItems,
  }) = _LoadingNewPage;

  const factory MultiPageListState.loading({
    required List<Item> items,
  }) = _Loading;
  const factory MultiPageListState.failure({
    required List<Item> items,
    required String errorText,
  }) = _Failure;

  List<Item>? get items {
    return mapOrNull(
        //initial: () => null,
        list: (value) => value.items,
        //searchInput: searchInput,
        loading: (value) => value.items,
        failure: (value) => value.items
    );
  }

  int? get currentPage{
    return mapOrNull(
        list: (value) => value.currentPage,
        loading: (value) => value.currentPage,
        failure: (value) => value.currentPage,
    );
  }

  int? get itemsPerPage{
    return mapOrNull(
        list: (value) => value.itemsPerPage,
        loading: (value) => value.itemsPerPage,
        failure: (value) => value.itemsPerPage
    );
  }
}
