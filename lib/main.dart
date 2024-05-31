import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_api/bloc_task/event_task.dart';
import 'package:todo_list_api/services/todo_services.dart';
import 'bloc_task/bloc_task.dart';
import 'screens/principale_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Créer une instance de TaskBloc
    final TaskBloc taskBloc = TaskBloc(TaskService());

    return BlocProvider<TaskBloc>(
      create: (context) => taskBloc..add(LoadFetchTasksEvent()),
      child: MaterialApp(
        title: 'ToDo App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
