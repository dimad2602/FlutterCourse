import 'package:curse_app_1/data/repositories/todo_repo/todo_repo.dart';
import 'package:curse_app_1/domain/blocs/todos/bloc/todos_bloc.dart';
import 'package:curse_app_1/models/todo_model/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskDetailsPage extends StatelessWidget {
  final Todo task;

  const TaskDetailsPage({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _commentController = TextEditingController();
    return BlocProvider(
      create: (context) => TodosBloc(TodoRetrofitRepo()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Task Details'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushNamed('/TodosPage');
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.title,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                task.description,
                style: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _commentController,
                      decoration: const InputDecoration(
                        hintText: 'Enter your comment',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        //print(value);

                        //task.comment = value;
                      },
                    ),
                  ),
                  const SizedBox(width: 18.0),
                  BlocBuilder<TodosBloc, TodosState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          context.read<TodosBloc>().add(TodosEvent.update(
                              todo: task.copyWith(
                                  comment: _commentController.text)));
                        },
                        child: const Text('Save comment'),
                      );
                    },
                  ),
                ],
              ),
              const Text(
                'Comments:',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              BlocBuilder<TodosBloc, TodosState>(
                builder: (context, state) {
                  return Text(
                    state.todoList.firstWhere((e) => e.id == task.id, orElse: () => task).comment?? "Не указан",
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
