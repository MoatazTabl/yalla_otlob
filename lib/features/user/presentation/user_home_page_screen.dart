import 'package:dahab_delivery/core/app_images.dart';
import 'package:dahab_delivery/core/app_strings.dart';
import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'widgets/category_widget.dart';

class UserHomePageScreen extends StatelessWidget {
  const UserHomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Text(
            "${getAppLocalizations(context)?.hello} Moataz!",

          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.push(AppStrings.userHistoryScreenRoute);
            },
            icon: const Icon(
              Icons.history,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              getAppLocalizations(context)!.topCategory,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Theme.of(context).brightness==Brightness.dark?Colors.white:Colors.black87),
            ),
            SizedBox(height: 10.h,),
            Wrap(
               spacing: 20.w,
              runSpacing: 20.h,
              runAlignment: WrapAlignment.spaceBetween,
              direction: Axis.horizontal,
              children: [
                CategoryWidget(
                  categoryName: getAppLocalizations(context)!.food,
                  categoryPicPath: AppImages.foodPic,
                  onTap: () {
                    context.push(AppStrings.userRestaurantScreenRoute);
                  },
                ),
                CategoryWidget(
                  categoryName: getAppLocalizations(context)!.market,
                  categoryPicPath: AppImages.marketPic,
                  onTap: () {
                    context.push(AppStrings.userMarketScreenRoute);

                  },
                ),
                CategoryWidget(
                  categoryName: getAppLocalizations(context)!.pharmacy,
                  categoryPicPath: AppImages.pharmacyPic,
                  onTap: () {
                    context.push(AppStrings.userPharmacyScreenRoute);

                  },
                ),
              CategoryWidget(
                  categoryName: getAppLocalizations(context)!.wslny,
                  categoryPicPath: AppImages.wslnyPic,
                  onTap: () {
                    context.push(AppStrings.userPharmacyScreenRoute);

                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
