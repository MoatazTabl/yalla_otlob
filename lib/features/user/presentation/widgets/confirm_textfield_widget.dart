import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmTextFieldWidget extends StatelessWidget {
  const ConfirmTextFieldWidget({
    super.key,
    required this.controller,
    required this.labelText,
    required this.initialText,
  });

  final TextEditingController controller;
  final String labelText;
  final String initialText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: .9.sw,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: initialText,
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              14,
            ),
          ),
        ),
      ),
    );
  }
}
