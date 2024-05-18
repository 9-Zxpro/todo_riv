
import 'package:flutter/material.dart';
import 'package:todo_riv/config/routes/routes.dart';
import 'package:todo_riv/data/data.dart';
import 'package:todo_riv/utils/utils.dart';
import 'package:todo_riv/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) => const HomeScreen();
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: deviceSize.height * 0.3,
                  width: deviceSize.width,
                  color: colors.primary,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DisplayWhiteText(
                        text: '7 Aug, 2024',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                      DisplayWhiteText(
                        text: 'My Todo List',
                        fontSize: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 160,
              right: 0,
              left: 0,
              child: SafeArea(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const ListOfTask(
                        tasks: [
                          Task(
                              title: 'title',
                              note: 'this task is amazing',
                              time: '10:12',
                              date: '07 Aug',
                              isCompleted: false, 
                              category:TaskCategory.education,
                              ),
                          Task(
                              title: 'All New title',
                              note: '',
                              time: '11:12',
                              date: '12 May',
                              isCompleted: false, 
                              category:TaskCategory.social,
                              ),
                        ],
                        // isCompletedTasks: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Completed',
                        style: context.textTheme.headlineMedium,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const ListOfTask(
                        tasks: [
                          Task(
                              title: 'title',
                              note: 'note',
                              time: '10:12',
                              date: '07 Aug',
                              isCompleted: true, 
                              category:TaskCategory.education,
                              ),
                          Task(
                              title: 'All New title',
                              note: 'nothing',
                              time: '11:12',
                              date: '12 May',
                              isCompleted: true, 
                              category:TaskCategory.social,
                              ),
                        ],
                        isCompletedTasks: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () => context.push(RouteLocation.createTask),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: DisplayWhiteText(
                            text: 'Add New Task',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
