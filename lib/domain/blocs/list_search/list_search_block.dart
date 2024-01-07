import 'package:curse_app_1/domain/blocs/list_search/list_search_event.dart';
import 'package:curse_app_1/domain/repositories/list_search_repo.dart';
import 'package:curse_app_1/domain/blocs/list_search/list_search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListSearchBloc extends Bloc<ListSearchEvent, ListSearchState> {
  final IListRepository _repository;
  ListSearchBloc(this._repository) : super(InitialState()) {
    on<PageOpen>((event, emit) async {
      emit(LoadingState());

      final listItems = await _repository.fetchList();

      if (listItems.isNotEmpty) {
        emit(CompleteState(listItems));
      } else {
        emit(FailureState('List is empty'));
      }
    });

    

    on<SearchQueryChanged>((event, emit) {
      emit(SearchInputState(event.searchString));
    });
  }
}
