import 'package:bind_test/models/calendart_info.dart';
import 'package:bind_test/pages/home/widgets/payment_strip.dart';
import 'package:flutter/material.dart';

import '../../../ui/colors.dart';

class DayStrip extends StatelessWidget {
  final CalendarInfo calendar;
  const DayStrip({
    Key? key,
    required this.calendar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 14, 0, 24),
          color: mainGreyColor,
          child: Text(
            calendar.date,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        for (int i = 0; i < calendar.informations.length; i++)
          PaymentStrip(info: calendar.informations[i]),
      ],
    );
  }
}
