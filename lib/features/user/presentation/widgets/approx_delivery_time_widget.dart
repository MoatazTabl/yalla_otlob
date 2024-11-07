import 'package:flutter/material.dart';

import '../../../../core/app_theme.dart';
import '../../../../core/helpers/common.dart';

class ApproxDeliveryTimeWidget extends StatelessWidget {
  const ApproxDeliveryTimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: getAppLocalizations(context)!.approxDeliveryTime,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Colors.black87),
          ),
          TextSpan(
            text: "23",
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: AppTheme.mainRed),
          ),
          TextSpan(
            text: getAppLocalizations(context)!.min,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color:  Colors.black87),
          ),
        ],
      ),
    );
  }
}
