import 'package:equatable/equatable.dart';

abstract class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object?> get props => [];
}

class LoadFetchTasksEvent extends TaskEvent {
   @override
  List<Object?> get props => [];
}


// class UpdateTask extends TaskEvent {
//   final int id;
//   final Task updatedTask;

//   const UpdateTask(this.id, this.updatedTask);

//   @override
//   List<Object?> get props => [id, updatedTask];
// }

// class DeleteTask extends TaskEvent {
//   final int id;

//   const DeleteTask(this.id);

//   @override
//   List<Object?> get props => [id];
// }
