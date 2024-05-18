import 'package:flutter/material.dart';
import 'package:todo_riv/utils/extensions.dart';

class CommonTextfield extends StatelessWidget {
  const CommonTextfield({super.key, required this.title, required this.hintText, this.controller, this.maxLines, this.suffixIcon, required this.readOnly});

  final String title;
  final String hintText;
  final int? maxLines;
  final Widget? suffixIcon;
  final bool readOnly;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: context.textTheme.titleLarge,
        ),
        const SizedBox(
          width: 10,
        ),
        TextField(
          readOnly: readOnly,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
          ),
          maxLines: maxLines,
          controller: controller,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
        ),
      ],
    );
  }
}
