import 'package:dahab_delivery/core/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helpers/common.dart';
import '../../manager/menu_cubit.dart';

class CheckOutButtonWidget extends StatelessWidget {
  const CheckOutButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          context.push(AppStrings.userOrderDetailScreenRoute);
        },
        style: ButtonStyle(
          maximumSize: WidgetStatePropertyAll(
            Size(
              .85.sw,
              70.h,
            ),
          ),
          minimumSize: WidgetStatePropertyAll(
            Size(
              200.w,
              70.h,
            ),
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                18,
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              getAppLocalizations(context)!.checkOut,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            BlocBuilder<MenuCubit, MenuState>(
              builder: (context, state) {
                return Container(
                  width: 50.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                  child: Center(
                    child: Text(
                        context.watch<MenuCubit>().numberOfItems.toString(),
                        style: Theme.of(context).textTheme.labelLarge),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
