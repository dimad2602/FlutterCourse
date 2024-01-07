import '../../../models/item_model/item.dart';

abstract class ListSearchState {}

class InitialState extends ListSearchState {}

class SearchInputState extends ListSearchState {
  final String searchString;

  SearchInputState(this.searchString);
}

class LoadingState extends ListSearchState {
}

class FailureState extends ListSearchState {
  final String errorText;

  FailureState(this.errorText);
}

class CompleteState extends ListSearchState {
  late List<Item> itemList;

  CompleteState(this.itemList);
}
