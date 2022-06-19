import 'package:flutter/material.dart';

import '../../../ui/colors.dart';

class DropdownCustom extends StatelessWidget {
  final String value;
  final Function(String val) onChange;
  final List<String> allValues;
  const DropdownCustom({
    Key? key,
    required this.value,
    required this.onChange,
    required this.allValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: mainGreyColor, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: DropdownButton(
          hint: Text(
            value,
            style: const TextStyle(color: whiteColor),
          ),
          isExpanded: true,
          iconSize: 30,
          icon: const Icon(Icons.keyboard_arrow_down),
          iconEnabledColor: whiteColor,
          underline: Container(),
          items: allValues.map(
            (val) {
              return DropdownMenuItem<String>(
                value: val,
                child: Text(val),
              );
            },
          ).toList(),
          onChanged: (String? val) {
            onChange(val!);
          },
        ),
      ),
    );
  }
}
