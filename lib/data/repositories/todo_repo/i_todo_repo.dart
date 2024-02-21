
import 'package:curse_app_1/models/todo_model/todo_model.dart';

abstract class ITodoRepository {
  Future<List<Todo>> getTodos();
  Future<bool> addTodo(Todo todo);
  Future<bool> compliteTodo(Todo todo);
  Future<bool> removeTodo(int id);
  Future<bool> removeAllTodos();
}
