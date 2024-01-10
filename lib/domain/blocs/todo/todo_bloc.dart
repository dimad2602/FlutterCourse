// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'todo_event.dart';
// part 'todo_state.dart';
// part 'todo_bloc.freezed.dart';

// class TodoBloc extends Bloc<TodoEvent, TodoState> {
//   TodoBloc() : super(_Initial()) {
//     on<TodoEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }

// import 'package:curse_app_1/domain/blocs/todo/todo_event.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../models/todo_model/todo.dart';

// part 'todo_state.dart';

// class TodoBloc extends Bloc<TodoEvent, TodoState> {
//   //final TodoRepository _repository;
//   TodoBloc() : super(TodoLoadingState()) {
//     on<LoadTodos>(_onLoadTodos);
//     on<AddTodo>(_onAddTodo);
//     on<UpdateTodo>();
//     on<DeleteTodo>((event, emit) {});

//     void _onLoadTodos(LoadTodos event, Emitter<TodoState> emit) {}
//     void _onAddTodo(AddTodo event, Emitter<TodoState> emit) {}
//     void _onLoadTodos(UpdateTodo event, Emitter<TodoState> emit) {}
//     void _onLoadTodos(DeleteTodo event, Emitter<TodoState> emit) {}
//   }
// }
