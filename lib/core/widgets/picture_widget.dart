import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PictureWidget extends StatelessWidget {
  const PictureWidget({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsetsDirectional.only(start: 8.w),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: 100.w,
        height: 120.h,
        imageBuilder: (context, imageProvider) {
          return Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image(
                image: imageProvider,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );

  }
}
