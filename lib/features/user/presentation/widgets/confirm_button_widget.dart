import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/common.dart';

class ConfirmButtonWidget extends StatelessWidget {
  const ConfirmButtonWidget({
    super.key,required this.onPressed,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        maximumSize: WidgetStatePropertyAll(
          Size(
            .85.sw,
            70.h,
          ),
        ),
        minimumSize: WidgetStatePropertyAll(
          Size(
            .85.sw,
            70.h,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              18,
            ),
          ),
        ),
      ),
      child:  Text(
        getAppLocalizations(context)!.confirm,
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
