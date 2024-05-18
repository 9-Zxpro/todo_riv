import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_riv/utils/task_cat.dart';

final categoryProvider = StateProvider<TaskCategory>(
  (ref) => TaskCategory.others,
);
