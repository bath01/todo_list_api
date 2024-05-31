import 'package:bloc/bloc.dart';
import '../services/todo_services.dart';
import '../bloc_task/event_task.dart';
import '../bloc_task/state_task.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskService taskService;

  TaskBloc(this.taskService) : super(TaskInitial()) {
    on<LoadFetchTasksEvent>((event, emit) async {
      emit(TaskLoadingState());
      try {
        final task = await taskService.fetchTasks();
        emit(TaskLoadedState(task));
      } catch (e) {
        emit(TaskErrorState(e.toString()));
      }
    });
  }
}
