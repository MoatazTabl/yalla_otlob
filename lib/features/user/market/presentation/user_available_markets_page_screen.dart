import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/app_theme.dart';
import '../../../../core/widgets/picture_widget.dart';

class UserAvailableMarketsPageScreen extends StatelessWidget {
  const UserAvailableMarketsPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(getAppLocalizations(context)!.marketAndGroceries),),
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              getAppLocalizations(context)!.marketAndGroceries,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black87),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return AvailableMarketWidget(
                    heroTag: "$index",
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
class AvailableMarketWidget extends StatelessWidget {
  const AvailableMarketWidget({super.key, required this.heroTag});

  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppStrings.userMarketScreenRoute, extra: heroTag);
      },
      child: Container(
        height: 175.h,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: heroTag,
                  child: const PictureWidget(
                    imageUrl:"https://img.freepik.com/free-vector/supermarket-logo_23-2148490225.jpg?t=st=1730488204~exp=1730491804~hmac=37fdddc8bc0887ee083cc3013fbe74b51289d628365500dc35a25c9bf25e2c7c&w=740"
                    ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 5),
                  child: Text("ماركت التاسع",style: Theme.of(context).textTheme.labelMedium,),
                )
              ],
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Chip(
                  label: Text(
                    getAppLocalizations(context)!.closed,
                  ),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.zero,
                  labelStyle: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: AppTheme.mainRed),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
