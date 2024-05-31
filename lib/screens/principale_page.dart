import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_api/bloc_task/bloc_task.dart';
import 'package:todo_list_api/bloc_task/event_task.dart';
import 'package:todo_list_api/bloc_task/state_task.dart';
import 'package:todo_list_api/models/todo_api.dart';
import 'package:todo_list_api/services/todo_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('The BloC ToDo list at Api')), body: blocBody());
  }

  Widget blocBody() {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        if (state is TaskLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is TaskErrorState) {
          return const Center(child: Text("Error"));
        }
        if (state is TaskLoadedState) {
          List<Task> taskList = state.tasks;
          return ListView.builder(
              itemCount: taskList.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Card(
                      color: Theme.of(context).primaryColor,
                      child: ListTile(
                        title: Text(
                          '${taskList[index].id}  ${taskList[index].title}',
                          style: const TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          '${taskList[index].body}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
                );
              });
        }
    
        return Container();
      },
    );
  }
}
