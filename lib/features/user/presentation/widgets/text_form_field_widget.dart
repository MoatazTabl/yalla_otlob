import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.controller,
    required this.labelText,
    required this.initialText,  this.validator,
  });

  final TextEditingController controller;
  final String labelText;
  final String initialText;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.w,vertical: 10),
      child: TextFormField(
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
        validator: validator
      ),
    );
  }
}
