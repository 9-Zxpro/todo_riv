import 'package:equatable/equatable.dart';

import 'package:todo_riv/utils/utils.dart';

class Task extends Equatable {
  final int? id;
  final String title;
  final String note;
  final String time;
  final String date;
  final TaskCategory category;
  final bool isCompleted;

  const Task({
    this.id,
    required this.title,
    required this.note,
    required this.time,
    required this.date,
    required this.isCompleted,
    required this.category,
  });

  @override
  List<Object> get props {
    return [
      id!,
      title,
      note,
      time,
      date,
      category,
      isCompleted,
    ];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      TaskKeys.id: id,
      TaskKeys.title: title,
      TaskKeys.note: note,
      TaskKeys.time: time,
      TaskKeys.date: date,
      TaskKeys.category: category.name,
      TaskKeys.isCompleted: isCompleted,
    };
  }

  factory Task.fromJson(Map<String, dynamic> map) {
    return Task(
      id: map['id'] != null ? map['id'] as int : null,
      title: map['title'] as String,
      note: map['note'] as String,
      time: map['time'] as String,
      date: map['date'] as String,
      category: TaskCategory.stringToCategory(map[TaskKeys.category]),
      isCompleted: map['isCompleted'] as bool,
    );
  }

}
