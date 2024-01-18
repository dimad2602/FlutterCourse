import '../../../models/item_model/item.dart';

abstract class ListState {}

class InitialState extends ListState {}

class ListDataState extends ListState {
  final List<Item> items;

  ListDataState(this.items);
}

class SearchInputState extends ListState {
  final String searchString;

  SearchInputState(this.searchString);
}

class LoadingState extends ListState {}

class FailureState extends ListState {
  final List<Item> items;
  final String? searchString;
  final String errorText;

  FailureState({required this.items, required this.errorText, this.searchString});
}
