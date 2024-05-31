import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/todo_api.dart';

class TaskService {
  Future<List<Task>> fetchTasks() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Task.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load tasks');
    }
  }

  Future<void> updateTask(int id, Task updatedTask) async {
    // Implementer la mise à jour de la tâche sur l'API
  }

  Future<void> deleteTask(int id) async {
    // Implementer la suppression de la tâche sur l'API
  }
}
