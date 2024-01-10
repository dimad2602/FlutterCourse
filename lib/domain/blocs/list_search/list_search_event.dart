abstract class ListSearchEventOld {}

class SearchQueryChanged extends ListSearchEventOld {
  final String searchString;

  SearchQueryChanged(this.searchString);
}

class PageOpen extends ListSearchEventOld {}

class FetchListComplete extends ListSearchEventOld{}

// class ListLoadingRetry extends ListSearchEvent {
// }


