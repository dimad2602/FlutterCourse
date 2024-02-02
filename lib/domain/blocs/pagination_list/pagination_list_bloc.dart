
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repositories/multi_page_list_repo.dart';
import 'pagination_list_event.dart';
import 'pagination_list_state.dart';

class PaginationListBloc extends Bloc<PaginationListEvent, PaginationListState> {
  final IListRepository _repository;
  PaginationListBloc(this._repository) : super(InitialState()) {
    on<Initialize>((event, emit) async {
      emit(LoadingState([]));

      final listItems = await _repository.fetchPage(page: event.pageNumber, count: event.itemCount);

      if (listItems.isNotEmpty) {
        emit(PaginationListDataState(listItems, event.pageNumber, event.itemCount));
      } else {
        emit(FailureState([], 'List is empty'));
      }
    });

    on<ChangePage>((event, emit) async {
      emit(LoadingState([]));

      try {
        final items = await _repository.fetchPage(
          page: event.pageNumber, count: event.itemCount);
            emit(PaginationListDataState(items,  event.pageNumber, event.itemCount));
      } catch (error) {
        emit(FailureState([], 'Search failed: $error'));
      }
    });

    on<ChangeCountOfElements>((event, emit) async {
      emit(LoadingState([]));

      try {
        final items = await _repository.fetchPage(
          page: 0, count: event.itemCount);
            emit(PaginationListDataState(items,  event.pageNumber, event.itemCount));
      } catch (error) {
        emit(FailureState([], 'Search failed: $error'));
      }
    });
  }
}

