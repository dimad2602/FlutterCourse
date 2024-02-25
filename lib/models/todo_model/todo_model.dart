import 'package:curse_app_1/data/database/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';

@freezed
class Todo with _$Todo {
  const Todo._();
  const factory Todo({
    required int id,
    required String title,
    required String description,
    required bool isCompleted,
    String? comment,
  }) = _Todo;

  factory Todo.fromDatabase(TodoVeiw dbTable) => Todo(
      id: dbTable.id,
      title: dbTable.title,
      description: dbTable.description,
      isCompleted: dbTable.isCompleted,
      comment: dbTable.comment,
      );
}
