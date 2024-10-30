import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_theme.dart';

class ApproxDeliveryTimeWidget extends StatelessWidget {
  const ApproxDeliveryTimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.delivery_dining,
          color: AppTheme.mainRed,
          size: 42.r,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: getAppLocalizations(context)!.approxDeliveryTime,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).brightness == Brightness.light
                    ? Colors.black87
                    : Colors.white),
              ),
              TextSpan(
                text: "23",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: AppTheme.mainRed),
              ),
              TextSpan(
                text: getAppLocalizations(context)!.min,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.black87
                        : Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
