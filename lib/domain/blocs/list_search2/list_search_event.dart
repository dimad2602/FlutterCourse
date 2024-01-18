part of 'list_search_bloc.dart';

@freezed
class ListSearchEvent with _$ListSearchEvent {
  const factory ListSearchEvent.initialize() = _Initialize;

  const factory ListSearchEvent.searchStringChanged({
    required String searchString,
  }) = _SearchStringChanged;

  const factory ListSearchEvent.sendSearchString({ //example - search button
    required String searchString,
  }) = _SendSearchString;
}
