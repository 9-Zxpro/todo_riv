import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_riv/widgets/widgets.dart';


class AddTask extends StatelessWidget {
  static AddTask builder(BuildContext context, GoRouterState state) =>
      const AddTask();

  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Task"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CommonTextfield(
                title: 'Task Title',
                hintText: 'Task Title',
                readOnly: true,
              ),
              const SizedBox(
                height: 16,
              ),
              const SelectCategory(),
              const SizedBox(
                height: 16,
              ),
              const DateTimeSelect(
        
              ),
                          const SizedBox(
                height: 16,
              ),
              const CommonTextfield(
                title: 'Note',
                hintText: 'Task description',
                maxLines: 5,
                readOnly: true,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const DisplayWhiteText(text: 'Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
