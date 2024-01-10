// part of 'todo_bloc.dart';

// @freezed
// class TodoEvent with _$TodoEvent {
//   const factory TodoEvent.started() = _Started;
// }

import 'package:curse_app_1/models/todo_model/todo.dart';

abstract class TodoEvent {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

class LoadTodos extends TodoEvent {
  final List<Todo> todos;

  const LoadTodos({this.todos = const <Todo>[]});

  @override
  List<Object> get props => [todos];
}

class AddTodo extends TodoEvent {
  final Todo todo;

  AddTodo({required this.todo});

  @override
  List<Object> get props => [todo];
}

class UpdateTodo extends TodoEvent {
  final Todo todo;

  UpdateTodo({required this.todo});

  @override
  List<Object> get props => [todo];
}

class DeleteTodo extends TodoEvent {
  final Todo todo;

  DeleteTodo({required this.todo});

  @override
  List<Object> get props => [todo];
}
