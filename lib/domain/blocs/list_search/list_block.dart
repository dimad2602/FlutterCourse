import 'package:curse_app_1/domain/blocs/list_search/list_event.dart';
import 'package:curse_app_1/data/repositories/list_search_repo.dart';
import 'package:curse_app_1/domain/blocs/list_search/list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  final IListRepository _repository;
  ListBloc(this._repository) : super(InitialState()) {
    on<Initialize>((event, emit) async {
      emit(LoadingState());

      final listItems = await _repository.fetchList();

      if (listItems.isNotEmpty) {
        emit(ListDataState(listItems));
      } else {
        emit(FailureState(items: [], errorText: 'List is empty'));
      }
    });

    on<SendSearchString>((event, emit) async {
      emit(LoadingState());

      try {
        final searchedItems =
            await _repository.searchList(searchString: event.searchString);
            emit(ListDataState(searchedItems));
      } catch (error) {
        emit(FailureState(items: [], errorText: 'Search failed: $error'));
      }
    });
  }
}
