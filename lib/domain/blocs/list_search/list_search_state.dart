import '../../../models/item_model/item.dart';

abstract class ListSearchStateOld {}

class InitialState extends ListSearchStateOld {}

class SearchInputState extends ListSearchStateOld {
  final String searchString;

  SearchInputState(this.searchString);
}

class LoadingState extends ListSearchStateOld {
}

class FailureState extends ListSearchStateOld {
  final String errorText;

  FailureState(this.errorText);
}

class CompleteState extends ListSearchStateOld {
  late List<Item> itemList;

  CompleteState(this.itemList);
}
