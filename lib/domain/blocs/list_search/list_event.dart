abstract class ListEvent {}

class Initialize extends ListEvent {}

class SearchStringChanged extends ListEvent {
  final String searchString;

  SearchStringChanged(this.searchString);
}

class SendSearchString extends ListEvent {
  //example - search button
  final String searchString;

  SendSearchString(this.searchString);
}
