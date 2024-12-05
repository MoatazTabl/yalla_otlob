import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/app_strings.dart';
import '../../../../../core/app_theme.dart';
import '../../../../../core/helpers/common.dart';
import '../../../../../core/widgets/picture_widget.dart';

class AvailablePharmacyWidget extends StatelessWidget {
  const AvailablePharmacyWidget({super.key, required this.heroTag});

  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppStrings.userPharmacyScreenRoute, extra: heroTag);
      },
      child: Container(
        height: 185.h,
        margin: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: const Color(0xffE5E4E2),
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: heroTag,
                  child: const PictureWidget(
                    imageUrl:
                    "https://img.freepik.com/free-vector/logo-drugstore_1043-64.jpg?t=st=1730482273~exp=1730485873~hmac=acfdda6adb90f30d02f658d5582468c13e9c96c8315e2588af2edfbf85e7c50d&w=740",
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 5),
                  child: Text("صيدليه السلام",style: Theme.of(context).textTheme.labelMedium,),
                )
              ],
            ),
            // SizedBox(
            //   height: 5.h,
            // ),
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                children: [
                  Text("01098543824",style: Theme.of(context).textTheme.labelMedium,),
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
            )
          ],
        ),
      ),
    );
  }
}
