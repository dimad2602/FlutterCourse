part of 'multi_page_list_bloc.dart';

@freezed
class MultiPageListEvent with _$MultiPageListEvent {
  const factory MultiPageListEvent.started({
    required int pageNumber,
    required int itemCount,
  }) = _Started;

  const factory MultiPageListEvent.changePage({
    required int pageNumber,
    required int itemCount,
  }) = _ChangePage;

  const factory MultiPageListEvent.changeCountOfElements({
    required List<Item> items,
    required String countOfElements,
  }) = _ChangeCountOfElements;
}