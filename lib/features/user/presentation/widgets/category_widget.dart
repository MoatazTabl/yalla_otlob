import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key, required this.categoryName, required this.categoryPicPath, this.onTap,
  });

  final String categoryName;
  final String categoryPicPath;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 120.h,
        width: 150.w,
        decoration: BoxDecoration(
          color: const Color(0xffE5E4E2),
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              categoryName,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(fontWeight: FontWeight.w600,color: Colors.black),

            ),
            Image(
              image: AssetImage(
                categoryPicPath,
              ),
              width: 65.w,
              height: 70.w,

              fit: BoxFit.contain,
            )
          ],
        ),
      ),
    );
  }
}
