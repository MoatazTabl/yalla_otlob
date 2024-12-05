import 'package:yalla_otlob/core/app_theme.dart';
import 'package:yalla_otlob/core/helpers/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/widgets/food_item_pic_widget.dart';
import 'add_item_to_order_widget.dart';

class RestaurantMenuItem extends StatelessWidget {
  const RestaurantMenuItem({
    super.key,
    required this.itemMenuPic,
  });

  final String itemMenuPic;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FoodItemPicWidget(
          itemMenuPic: itemMenuPic,
        ),
        Text(
          "Pizza Chicken Ranch",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: AppTheme.vividRed),
        ),
        SizedBox(
          height: 7.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "180 EGP",
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                 color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black87
                      : Colors.white
                  ),
            ),
            const AddItemToOrder(),
          ],
        ),
      ],
    );
  }
}

Future<void> chooseSize(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (context) {
      List<String> options = ["small", "mid", "big"];
      String currentOperation = options[0];
      return StatefulBuilder(
        builder:
            (BuildContext context, void Function(void Function()) setState) {
          return AlertDialog(
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  getAppLocalizations(context)!.ok,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: AppTheme.vividRed),
                ),
              ),
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  getAppLocalizations(context)!.cancel,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: AppTheme.vividRed),
                ),
              ),
            ],
            title: Text(
              getAppLocalizations(context)!.chooseSize,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white),
            ),
            backgroundColor: Theme.of(context).brightness == Brightness.light
                ? AppTheme.whiteBackground
                : AppTheme.darkGrey,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Radio(
                      value: options[0],
                      groupValue: currentOperation,
                      onChanged: (value) {
                        setState(
                          () {
                            currentOperation = value.toString();
                          },
                        );
                      },
                    ),
                    Text(getAppLocalizations(context)!.small,
                        style: Theme.of(context).textTheme.labelMedium),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: options[1],
                      groupValue: currentOperation,
                      onChanged: (value) {
                        setState(
                          () {
                            currentOperation = value.toString();
                          },
                        );
                      },
                    ),
                    Text(
                      getAppLocalizations(context)!.mid,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: options[2],
                      groupValue: currentOperation,
                      onChanged: (value) {
                        setState(
                          () {
                            currentOperation = value.toString();
                          },
                        );
                      },
                    ),
                    Text(getAppLocalizations(context)!.big,
                        style: Theme.of(context).textTheme.labelMedium),
                  ],
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
