part of 'todos_bloc.dart';

@freezed
class TodosEvent with _$TodosEvent {
  const factory TodosEvent.started() = _Started;
  const factory TodosEvent.compliteTask({required Todo todo}) = _CompliteTask;
  const factory TodosEvent.add({required Todo todo}) = _Add;
  const factory TodosEvent.update({required Todo todo}) = _Update;
  const factory TodosEvent.remove({required Todo todo}) = _Remove;
  const factory TodosEvent.removeAll() = _RemoveAll;
}
