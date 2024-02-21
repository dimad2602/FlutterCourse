import 'package:curse_app_1/data/repositories/todo_repo/todo_repo.dart';
import 'package:curse_app_1/domain/blocs/todos/bloc/todos_bloc.dart';
import 'package:curse_app_1/models/todo_model/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TodosBloc(TodoRetrofitRepo())..add(const TodosEvent.started()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Todos"),
        ),
        body: Builder(builder: (context) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  context.read<TodosBloc>().add(const TodosEvent.removeAll());
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 32.0, top: 8, bottom: 8),
                  child: Align(
                      alignment: Alignment.topRight, child: Icon(Icons.delete)),
                ),
              ),
              Expanded(
                child: BlocBuilder<TodosBloc, TodosState>(
                  builder: (context, state) {
                    return state.when(
                      initial: (todosList) => compliteUI(context, todosList),
                      loading: (_) => loadingUI(context),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0, right: 16),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (dialogContext) {
                          final titleController = TextEditingController();
                          final descriptionController = TextEditingController();
                          return AlertDialog(
                            title: const Text('Add Task'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  controller: titleController,
                                  decoration:
                                      const InputDecoration(labelText: 'Title'),
                                ),
                                TextField(
                                  controller: descriptionController,
                                  decoration: const InputDecoration(
                                      labelText: 'Description'),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                child: const Text('Add'),
                                onPressed: () {
                                  final title = titleController.text;
                                  final description =
                                      descriptionController.text;
                                  context.read<TodosBloc>().add(TodosEvent.add(
                                        todo: Todo(
                                          id: 0,
                                          title: title,
                                          description: description,
                                          isCompleted: false,
                                        ),
                                      ));
                                  Navigator.of(dialogContext).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

Widget compliteUI(BuildContext context, List<Todo> todosList) {
  return ListView.builder(
    itemCount: todosList.length,
    itemBuilder: (context, index) {
      final task = todosList[index];
      return Card(
        child: ListTile(
          title: Text(
            task.title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(task.description),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                  onTap: () {
                    context
                        .read<TodosBloc>()
                        .add(TodosEvent.remove(todo: task));
                  },
                  child: const Icon(Icons.remove_circle)),
              Checkbox(
                value: task.isCompleted,
                onChanged: (bool? value) {
                  context
                      .read<TodosBloc>()
                      .add(TodosEvent.compliteTask(todo: task));
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}

Widget loadingUI(BuildContext context) {
  return const Center(child: CircularProgressIndicator());
}
