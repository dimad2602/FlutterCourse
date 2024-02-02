import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/item_model/item.dart';
import '../../../data/repositories/list_search_repo.dart';

part 'list_search_event.dart';
part 'list_search_state.dart';
part 'list_search_bloc.freezed.dart';

class ListSearchBloc extends Bloc<ListSearchEvent, ListSearchState> {
  final IListRepository _repository;
  ListSearchBloc(this._repository) : super(const ListSearchState.initial()) {
    on<ListSearchEvent>((event, emit) async {
      await event.map(
        initialize: (value) => _initialize(value, emit),
        searchStringChanged: (value) => _searchStringChanged(value, emit),
        sendSearchString: (value) => _sendSearchString(value, emit),
      );
    });
  }
  FutureOr<void> _initialize(
      _Initialize value, Emitter<ListSearchState> emit) async {
    print("_initialize");
    emit(const ListSearchState.loading());
    final items = await _repository.fetchList();
    emit(ListSearchState.list(items: items));
  }

  FutureOr<void> _searchStringChanged(
      _SearchStringChanged value, Emitter<ListSearchState> emit) {
    print("_searchStringChanged");
  }

  FutureOr<void> _sendSearchString(
      _SendSearchString value, Emitter<ListSearchState> emit) async {
    print("_sendSearchString");
    emit(const ListSearchState.loading());

    try {
      final searchedItems =
          await _repository.searchList(searchString: value.searchString);
      emit(ListSearchState.list(items: searchedItems));
    } catch (error) {
      emit(ListSearchState.failure(
        items: [],
        errorText: 'Search failed: $error',
        //searchString: value.searchString,
      ));
    }
  }
}
