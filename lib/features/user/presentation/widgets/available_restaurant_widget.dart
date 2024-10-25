import 'package:dahab_delivery/core/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'restaurant_name_and_description_widget.dart';
import 'restaurant_picture_widget.dart';
import 'restaurant_quick_info.dart';

class AvailableRestaurantWidget extends StatelessWidget {
  const AvailableRestaurantWidget({super.key, required this.heroTag});

  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppStrings.userRestaurantDetailScreenRoute,
            extra: heroTag);
      },
      child: Container(
        height: 170.h,
        margin: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: const Color(0xffE5E4E2),
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: heroTag,
                  child: const RestaurantPictureWidget(
                    imageUrl:
                        "https://bcassetcdn.com/public/blog/wp-content/uploads/2019/07/18094837/golden-diner.png",
                  ),
                ),
                const RestaurantNameAndDescriptionWidget(
                  restaurantName: 'Bazooka',
                  restaurantDescription: 'a great fried chicken restaurant',
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            const RestaurantQuickInfo(
              deliveryFee: '20',
              deliveryTime: '30',
            ),
          ],
        ),
      ),
    );
  }
}
