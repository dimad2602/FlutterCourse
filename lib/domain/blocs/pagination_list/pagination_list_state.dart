import '../../../models/item_model/item.dart';

abstract class PaginationListState {}

class InitialState extends PaginationListState {}

class PaginationListDataState extends PaginationListState {
  final List<Item> items;
  final int currentPage;
  final int itemsPerPage;

  PaginationListDataState(this.items, this.currentPage, this.itemsPerPage);
}

class LoadingNewPageState extends PaginationListState {
  final List<Item> previosItems;
  final List<Item> currentItems;
  LoadingNewPageState(this.previosItems, this.currentItems);
}

class LoadingState extends PaginationListState {
  final List<Item> items;
  LoadingState(this.items);
}

class FailureState extends PaginationListState {
  final List<Item> items;
  final String errorText;

  FailureState(this.items, this.errorText);
}
