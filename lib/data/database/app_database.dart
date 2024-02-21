import 'dart:io';

import 'package:curse_app_1/data/database/tables/todo_table.dart';
import 'package:curse_app_1/models/todo_model/todo_model.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

import 'package:sqlite3/sqlite3.dart';

part 'app_database.g.dart';

class AppDataBaseSingleton {
  static final AppDatabase _instance = AppDatabase();

  static AppDatabase get instance => _instance;
}

@DriftDatabase(tables: [TodoTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());
  @override
  int get schemaVersion => 1;

  Future<List<TodoVeiw>> getAllTodos() => select(todoTable).get();

  Future<int> insertNewTodo(Todo todo) async {
    final companion = TodoTableCompanion.insert(
        title: todo.title, description: todo.description);
    return await into(todoTable).insert(companion);
  }

  Future updateTodo(Todo entry) {
    final companion = TodoVeiw(
        id: entry.id,
        title: entry.title,
        description: entry.description,
        isCompleted: entry.isCompleted);
    return update(todoTable).replace(companion);
  }

  Future deleteTodo(int id) {
    return delete(todoTable).delete(TodoTableCompanion(id: Value(id)));
  }

  Future<void> deleteAllTodos() => delete(todoTable).go();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called todos.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'todos.sqlite'));

    // Also work around limitations on old Android versions
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    // Make sqlite3 pick a more suitable location for temporary files - the
    // one from the system may be inaccessible due to sandboxing.
    final cachebase = (await getTemporaryDirectory()).path;
    // We can't access /tmp on Android, which sqlite3 would try by default.
    // Explicitly tell it about the correct temporary directory.
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}
