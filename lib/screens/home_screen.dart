import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_riv/utils/utils.dart';
import 'package:todo_riv/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
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
            top: 130,
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
                      tasks: [],
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
                      tasks: [],
                      isCompletedTasks: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: DisplayWhiteText(
                            text: 'Add New Task',
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
