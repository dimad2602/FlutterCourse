abstract class ListSearchEvent {}

class SearchQueryChanged extends ListSearchEvent {
  final String searchString;

  SearchQueryChanged(this.searchString);
}

class PageOpen extends ListSearchEvent {}

class FetchListComplete extends ListSearchEvent{}

// class ListLoadingRetry extends ListSearchEvent {
// }


