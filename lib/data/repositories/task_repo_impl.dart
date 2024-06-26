import 'package:todo_riv/data/data.dart';
import 'package:todo_riv/data/models/task.dart';
import 'package:todo_riv/data/repositories/task_repo.dart';

class TaskRepoImpl implements TaskRepo {
  final TaskDatasource _datasource;

  TaskRepoImpl(this._datasource);

  @override
  Future<void> createTask(Task task) async {
    try {
      await _datasource.addTask(task);
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<void> deleteTask(Task task) async {
    try {
      await _datasource.deleteTask(task);
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<List<Task>> getAllTask() async {
    try {
      return await _datasource.getAllTask();
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<void> updateTask(Task task) async {
    try {
      await _datasource.updateTask(task);
    } catch (e) {
      throw '$e';
    }
  }
}
