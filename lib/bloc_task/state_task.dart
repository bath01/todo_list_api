import 'package:equatable/equatable.dart';

import '../models/todo_api.dart';

abstract class TaskState extends Equatable {}


class TaskLoadingState extends TaskState {
  @override
  List<Object?> get props => [];
}

class TaskLoadedState extends TaskState {
  final List<Task> tasks;
  TaskLoadedState(this.tasks);
  @override
  List<Object?> get props => [tasks];
}

class TaskErrorState extends TaskState {
  final String error;
  TaskErrorState(this.error);
  @override
  List<Object?> get props => [error];
}

class TaskInitial extends TaskState {
  @override
  List<Object?> get props => [];
}
