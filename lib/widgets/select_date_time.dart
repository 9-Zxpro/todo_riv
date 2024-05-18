import 'package:flutter/material.dart';
import 'package:todo_riv/providers/time_provider.dart';
import 'package:todo_riv/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo_riv/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';


class DateTimeSelect extends ConsumerWidget {
  const DateTimeSelect({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(dateProvider);
    final time = ref.watch(timeProvider);


    return Row(
      children: [
        Expanded(
          child: CommonTextfield(
            title: 'Date',
            hintText: DateFormat.yMMMd().format(date),
            suffixIcon: IconButton(
              onPressed: () => _selectDate(context, ref),
              icon: const FaIcon(FontAwesomeIcons.calendar),
            ),
            readOnly: true,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: CommonTextfield(
            title: 'Time',
            hintText: time.format(context),
            suffixIcon: IconButton(
              onPressed: () => _selectTime(context, ref),
              icon: const FaIcon(FontAwesomeIcons.clock),
            ),
            readOnly: true,
          ),
        ),
      ],
    );
  }

  void _selectTime(BuildContext context, WidgetRef ref) async {

    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null){
      ref.read(timeProvider.notifier).state = pickedTime;
    } 
    // print(pickedTime);
  }
  void _selectDate(BuildContext context, WidgetRef ref) async {
    final initialDate = ref.read(dateProvider);

    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );
    if (pickedDate != null){
      ref.read(dateProvider.notifier).state = pickedDate;
    } 
    // print(pickedDate);
  }
}
