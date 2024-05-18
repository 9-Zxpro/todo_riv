
import 'package:todo_riv/data/models/task.dart';

abstract class TaskRepo {
  Future<void> createTask(Task task);
  Future<void> updateTask(Task task);
  Future<void> deleteTask(Task task);
  Future<List<Task>> getAllTask();
}