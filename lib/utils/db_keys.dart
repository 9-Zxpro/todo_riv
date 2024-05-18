
import 'package:flutter/material.dart';
import 'package:todo_riv/utils/utils.dart';

@immutable
class DBKeys {
  const DBKeys._();

  static const String dbName = 'tasts.db'; 
  static const String dbTable = 'tasts'; 
  static const String idColumn = TaskKeys.id;
  static const String titleColumn = TaskKeys.title;
  static const String noteColumn = TaskKeys.note;
  static const String timeColumn = TaskKeys.time;
  static const String dateColumn = TaskKeys.date;
  static const String categoryColumn = TaskKeys.category;
  static const String isCompletedColumn = TaskKeys.isCompleted;
}