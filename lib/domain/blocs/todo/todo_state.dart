// part of 'todo_bloc.dart';

// @freezed
// class TodoState with _$TodoState {
//   const factory TodoState.initial() = _Initial;
// }

import '../../../models/todo_model/todo.dart';


abstract class TodoState {
  const TodoState();

  @override
  List<Object> get props => [];
}

//class InitialState extends TodoState {}

class TodoLoadingState extends TodoState {}

class TodoCompleteState extends TodoState {
  final List<Todo> todos;

  const TodoCompleteState({this.todos = const <Todo>[]});

  @override
  List<Object> get props => [todos];
}

class FailureState extends TodoState {
  // final String errorText;

  // FailureState(this.errorText);
}
