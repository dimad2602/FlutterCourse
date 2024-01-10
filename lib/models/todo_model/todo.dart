import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class Todo with _$Todo{
  const Todo._();

  const factory Todo ({
    required String name,
  }) = _Todo;
}