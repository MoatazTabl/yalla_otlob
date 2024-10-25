import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/app_images.dart';

class RestaurantQuickInfo extends StatelessWidget {
  const RestaurantQuickInfo({
    super.key, required this.deliveryFee, required this.deliveryTime,
  });

  final String deliveryFee;
  final String deliveryTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 10.w),
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
            style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black),
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
            style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
