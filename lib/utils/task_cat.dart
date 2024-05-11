import 'package:flutter/material.dart';

enum TaskCategory {
  education(Icons.school, Colors.blueGrey),
  health(Icons.favorite, Colors.orange),
  home(Icons.home, Colors.green),
  others(Icons.calendar_month, Colors.purple),
  shopping(Icons.shopping_bag, Colors.pink),
  personal(Icons.person, Colors.lightBlue),
  social(Icons.people, Colors.brown),
  travel(Icons.work, Colors.amber);

  final IconData icon;
  final Color color;
  const TaskCategory(
    this.icon,
    this.color,
  );
}
