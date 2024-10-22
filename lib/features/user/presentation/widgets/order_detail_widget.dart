import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailWidget extends StatelessWidget {
  const OrderDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffE5E4E2),
          borderRadius: BorderRadius.circular(
            16,
          ),

        ),
        width: .95.sw,
        height: 100,
        padding: const EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(vertical: 8.h),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl:
                'https://bcassetcdn.com/public/blog/wp-content/uploads/2019/07/18094833/the-red-cafe.png',
                imageBuilder: (context, imageProvider) {
                  return ClipRRect(borderRadius: BorderRadius.circular(8),child: Image(image: imageProvider),);
                },
                height: 80.w,
                width: 80.w,
              ),
              const Flexible(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("The Red Chef"),
                          Spacer(),
                          Text("2024-10-21"),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text("Moataz Driver"),
                          Spacer(),
                          Text("200 EGP"),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
