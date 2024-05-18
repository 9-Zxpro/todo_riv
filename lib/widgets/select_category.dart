import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_riv/utils/extensions.dart';
import 'package:todo_riv/utils/task_cat.dart';
import 'package:todo_riv/widgets/circle_container.dart';
import 'package:todo_riv/providers/providers.dart';

class SelectCategory extends ConsumerWidget {
  const SelectCategory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = TaskCategory.values.toList();

    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Text(
            'Category',
            style: context.textTheme.titleLarge,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final category = categories[index];
                return InkWell(
                  onTap: () {
                    ref.read(categoryProvider.notifier).state = category;
                  },
                  borderRadius: BorderRadius.circular(30),
                  child: CircleContainer(
                    color: category.color.withOpacity(0.3),
                    child: Icon(
                      category.icon,
                      color: category == SelectCategory ? context.colorScheme.primary : category.color,
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 10,
              ),
              itemCount: categories.length,
            ),
          )
        ],
      ),
    );
  }
}
