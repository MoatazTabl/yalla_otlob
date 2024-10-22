import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantPictureWidget extends StatelessWidget {
  const RestaurantPictureWidget({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: 100.w,
      height: 120.h,
      imageBuilder: (context, imageProvider) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image(
            image: imageProvider,
            fit: BoxFit.fill,
          ),
        );
      },
    );
  }
}
