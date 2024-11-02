import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/app_images.dart';
import '../../../core/app_strings.dart';
import '../../../core/helpers/common.dart';
import 'widgets/category_widget.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getAppLocalizations(context)!.topCategory,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black87),
          ),
          SizedBox(
            height: 10.h,
          ),
          Wrap(
            spacing: 20.w,
            runSpacing: 20.h,
            runAlignment: WrapAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: [
              CategoryWidget(
                categoryName: getAppLocalizations(context)!.restaurants,
                categoryPicPath: AppImages.foodPic,
                onTap: () {
                  context.push(AppStrings.userRestaurantScreenRoute);
                },
              ),
              CategoryWidget(
                categoryName: getAppLocalizations(context)!.marketNdGroceries,
                categoryPicPath: AppImages.marketPic,
                onTap: () {
                  context.push(AppStrings.userAvailableMarketScreenRoute);
                },
              ),
              CategoryWidget(
                categoryName: getAppLocalizations(context)!.pharmacy,
                categoryPicPath: AppImages.pharmacyPic,
                onTap: () {
                  context.push(AppStrings.userAvailablePharmacyScreenRoute);
                },
              ),
              CategoryWidget(
                categoryName: getAppLocalizations(context)!.wsly,
                categoryPicPath: AppImages.wslyPic,
                onTap: () {
                  context.push(AppStrings.userWslyScreenRoute);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
