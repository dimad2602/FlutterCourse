import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:curse_app_1/data/repositories/todo_repo/i_todo_repo.dart';
import 'package:curse_app_1/models/todo_model/todo_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todos_event.dart';
part 'todos_state.dart';
part 'todos_bloc.freezed.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  final ITodoRepository _repository;
  TodosBloc(this._repository) : super(const TodosState.initial(todoList: [])) {
    on<TodosEvent>((event, emit) async {
      await event.map(
        started: (value) => _started(value, emit),
        add: (value) => _add(value, emit),
        update: (value) => _update(value, emit),
        remove: (value) => _remove(value, emit),
        compliteTask: (value) => _compliteTask(value, emit),
        removeAll: (value) => _removeAll(value, emit),
      );
    });
  }

  FutureOr<void> _started(_Started value, Emitter<TodosState> emit) async {
    emit(const TodosState.loading(todoList: []));
    final todosList = await _repository.getTodos();
    print("_started ${todosList}");
    emit(TodosState.initial(todoList: todosList));
  }

  FutureOr<void> _add(_Add value, Emitter<TodosState> emit) async {
    emit(const TodosState.loading(todoList: []));
    print("_add todo ${value.todo}");
    await _repository.addTodo(value.todo);
    final todosList = await _repository.getTodos();
    print("_add todosList ${todosList}");
    emit(TodosState.initial(todoList: todosList));
  }

  FutureOr<void> _update(_Update value, Emitter<TodosState> emit) async {
    print("_update");
    await _repository.addComment(value.todo);
    final todosList = await _repository.getTodos();
    emit(TodosState.initial(todoList: todosList));
  }

  FutureOr<void> _remove(_Remove value, Emitter<TodosState> emit) async {
    await _repository.removeTodo(value.todo.id);
    final todosList = await _repository.getTodos();
    emit(TodosState.initial(todoList: todosList));
  }

  FutureOr<void> _removeAll(_RemoveAll value, Emitter<TodosState> emit) async {
    await _repository.removeAllTodos();
    final todosList = await _repository.getTodos();
    emit(TodosState.initial(todoList: todosList));
  }

  FutureOr<void> _compliteTask(
      _CompliteTask value, Emitter<TodosState> emit) async {
    await _repository.compliteTodo(value.todo);
    final todosList = await _repository.getTodos();
    emit(TodosState.initial(todoList: todosList));
  }
}
