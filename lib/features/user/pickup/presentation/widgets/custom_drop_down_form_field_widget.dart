import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/common.dart';

class CustomDropDownFormField extends StatefulWidget {
  const CustomDropDownFormField({super.key});

  @override
  State<CustomDropDownFormField> createState() => _CustomDropDownFormFieldState();
}

class _CustomDropDownFormFieldState extends State<CustomDropDownFormField> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: .9.sw,
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButtonFormField<String>(
          padding: EdgeInsets.zero,
          enableFeedback: true,
          borderRadius: BorderRadius.circular(16),
          dropdownColor: Colors.grey[300],
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            label: Text(getAppLocalizations(context)!.numberOfPassengers),
            constraints: BoxConstraints(maxWidth: .9.sw),
          ),
          value: selectedValue,
          items: const [
            DropdownMenuItem(
              value: "1",
              child: Text("1"),
            ),
            DropdownMenuItem(
              value: "2",
              child: Text("2"),
            ),
            DropdownMenuItem(
              value: "3",
              child: Text("3"),
            ),
            DropdownMenuItem(
              value: "4",
              child: Text("4"),
            ),
          ],
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
      ),
    );
  }
}
