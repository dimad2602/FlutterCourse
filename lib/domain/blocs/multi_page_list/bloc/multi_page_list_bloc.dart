import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/item_model/item.dart';
import '../../../repositories/multi_page_list_repo.dart';

part 'multi_page_list_event.dart';
part 'multi_page_list_state.dart';
part 'multi_page_list_bloc.freezed.dart';

class MultiPageListBloc extends Bloc<MultiPageListEvent, MultiPageListState> {
  final IListRepository _repository;
  MultiPageListBloc(this._repository)
      : super(const MultiPageListState.initial()) {
    on<MultiPageListEvent>((event, emit) async {
      await event.map(
          started: (value) => _started(value, emit),
          changePage: (value) => _changePage(value, emit),
          changeCountOfElements: (value) =>
              _changeCountOfElements(value, emit));
    });
  }

  FutureOr<void> _started(
      _Started value, Emitter<MultiPageListState> emit) async {
    emit(const MultiPageListState.loading(items: []));
    try {
      final items = await _repository.fetchPage(
          page: value.pageNumber, count: value.itemCount);
      emit(MultiPageListState.list(
          items: items,
          currentPage: value.pageNumber,
          itemsPerPage: value.itemCount));
    } catch (e) {
      emit(const MultiPageListState.failure(
          items: [], errorText: 'Error loading data'));
    }
  }

  FutureOr<void> _changePage(
      _ChangePage value, Emitter<MultiPageListState> emit) async {
    emit(const MultiPageListState.loading(items: []));
    try {
      final items = await _repository.fetchPage(
          page: value.pageNumber, count: value.itemCount);
      emit(MultiPageListState.list(
          items: items,
          currentPage: value.pageNumber,
          itemsPerPage: value.itemCount));
    } catch (e) {
      emit(const MultiPageListState.failure(
          items: [], errorText: 'Error loading new page'));
    }
  }

  FutureOr<void> _changeCountOfElements(
      _ChangeCountOfElements value, Emitter<MultiPageListState> emit) async {
    emit(MultiPageListState.loading(items: value.items));
    try {
      final items = await _repository.fetchPage(
          page: 0, count: int.parse(value.countOfElements));
      emit(MultiPageListState.list(
          items: items,
          currentPage: 0,
          itemsPerPage: int.parse(value.countOfElements)));
    } catch (e) {
      emit(MultiPageListState.failure(
          items: value.items, errorText: 'Error loading more items'));
    }
  }
}
