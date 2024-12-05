import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_theme.dart';
import '../../../../../core/helpers/common.dart';

class OrderDetailWidget extends StatelessWidget {
  const OrderDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        bottomSheetSpecialInstructions(context);
      },
      child: Container(
        height: 170.h,
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          color: const Color(0xffE5E4E2),
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl:
              "https://bcassetcdn.com/public/blog/wp-content/uploads/2019/07/18094837/golden-diner.png",
              height: 130.w,
              width: 130.w,
              imageBuilder: (context, imageProvider) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(image: imageProvider),
                );
              },
            ),
            SizedBox(
              width: 5.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Chicken Ranch Pizza",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: Colors.black),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      getAppLocalizations(context)!.specialInstructions,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: AppTheme.vividRed),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Icon(
                      Icons.edit,
                      color: AppTheme.vividRed,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(getAppLocalizations(context)!.size,
                        style: Theme.of(context).textTheme.labelMedium),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text("Big", style: Theme.of(context).textTheme.labelMedium),
                  ],
                ),
                Text(
                  "180 EGP",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Future<void>bottomSheetSpecialInstructions(BuildContext context)async
{
  return await showModalBottomSheet(
    context: context,
    builder: (context) {
      return Column(
        children: [
          Text(
            getAppLocalizations(context)!.specialInstructions,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: AppTheme.vividRed),
          ),
          const Spacer(),
          Center(
            child: SizedBox(
              height: 200.h,
              width: 0.9.sw,
              child: TextField(
                maxLines: 5,

                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: 200.w,
                height: 70.h,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(getAppLocalizations(context)!.addNotes,
                      style: Theme.of(context).textTheme.labelLarge,),
                ),),
          ),
        ],
      );
    },
  );
}