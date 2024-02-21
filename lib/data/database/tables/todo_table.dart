import 'package:drift/drift.dart';

@DataClassName('TodoVeiw')
class TodoTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 32)();
  TextColumn get description => text().named('description')();
  BoolColumn get isCompleted => boolean().named('is_completed').withDefault(const Constant(false))();
}