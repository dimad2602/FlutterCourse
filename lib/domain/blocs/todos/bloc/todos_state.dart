part of 'todos_bloc.dart';

@freezed
class TodosState with _$TodosState {
  const factory TodosState.initial({required List<Todo> todoList} ) = _Initial;
  const factory TodosState.loading({required List<Todo> todoList}) = _Loading;
}
