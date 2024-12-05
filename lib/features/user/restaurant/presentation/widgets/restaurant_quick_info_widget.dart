import 'package:yalla_otlob/core/app_theme.dart';
import 'package:yalla_otlob/core/helpers/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/app_images.dart';

class RestaurantQuickInfoWidget extends StatelessWidget {
  const RestaurantQuickInfoWidget({
    super.key,
    required this.deliveryFee,
    required this.deliveryTime,
  });

  final String deliveryFee;
  final String deliveryTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          SvgPicture.asset(
            AppImages.deliveryFeeIcon,
          ),
          SizedBox(
            width: 7.w,
          ),
          Text(
            "$deliveryFee EGP",
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: Colors.black),
          ),
          SizedBox(
            width: 20.w,
          ),
          SvgPicture.asset(
            AppImages.timeIcon,
          ),
          SizedBox(
            width: 7.w,
          ),
          Text(
            "$deliveryTime Min",
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: Colors.black),
          ),
          const Spacer(),
          Chip(
            label: Text(
              getAppLocalizations(context)!.closed,
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.zero,
            labelStyle: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: AppTheme.vividRed),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
