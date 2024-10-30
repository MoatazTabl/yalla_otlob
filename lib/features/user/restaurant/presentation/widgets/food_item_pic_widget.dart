import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodItemPicWidget extends StatelessWidget {
  const FoodItemPicWidget({
    super.key,
    required this.itemMenuPic,
  });

  final String itemMenuPic;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: itemMenuPic,
      fit: BoxFit.fill,
      imageBuilder: (context, imageProvider) {
        return SizedBox(
          height: 120.h,
          width: 130.w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image(
              image: imageProvider,
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }
}
