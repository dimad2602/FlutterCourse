import 'package:curse_app_1/data/database/app_database.dart';
import 'package:curse_app_1/data/repositories/todo_repo/i_todo_repo.dart';
import 'package:curse_app_1/models/todo_model/todo_model.dart';

class TodoRetrofitRepo implements ITodoRepository {
  @override
  Future<List<Todo>> getTodos() async {
    final List<Todo> todosList = [];
    final db = AppDataBaseSingleton.instance;
    try {
      final items = await db.getAllTodos();
      todosList.addAll(items.map((e) => Todo.fromDatabase(e)));
      return todosList;
    } catch (_) {}
    return todosList;
  }

  @override
  Future<bool> addTodo(Todo todo) async {
    final db = AppDataBaseSingleton.instance;
    try {
      await db.insertNewTodo(todo);
    } catch (_) {}
    return true;
  }

  @override
  Future<bool> compliteTodo(Todo todo) async {
    final db = AppDataBaseSingleton.instance;
    try {
      final newTodo =
          todo.copyWith(isCompleted: todo.isCompleted ? false : true);
      await db.updateTodo(newTodo);
    } catch (_) {}
    return true;
  }

  @override
  Future<bool> removeTodo(int id) async {
    final db = AppDataBaseSingleton.instance;
    try {
      await db.deleteTodo(id);
    } catch (_) {}
    return true;
  }

  @override
  Future<bool> removeAllTodos() async {
    final db = AppDataBaseSingleton.instance;
    try {
      await db.deleteAllTodos();
    } catch (_) {}
    return true;
  }

  @override
  Future<bool> addComment(Todo todo) async {
    final db = AppDataBaseSingleton.instance;
    try {
      final newTodo =
          todo.copyWith(comment: todo.comment);
      await db.updateTodo(newTodo);
    } catch (_) {}
    return true;
  }
}
