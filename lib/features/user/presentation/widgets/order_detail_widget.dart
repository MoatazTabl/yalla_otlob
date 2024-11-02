import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/common.dart';
import 'approx_delivery_time_widget.dart';
import 'price_and_status_widget.dart';
import 'type_of_delivery_widget.dart';

class OrderDetailWidget extends StatelessWidget {
  const OrderDetailWidget({super.key, required this.imgPath});

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.h,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        color: const Color(0xffE5E4E2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TypeOfDeliveryWidget(imgPath: imgPath),
          Text(
            "Bazooka",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          const ApproxDeliveryTimeWidget(),
          const PriceAndStatusWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(
                    Size(
                      150.w,
                      45.h,
                    ),
                  ),
                ),
                child: Text(
                  getAppLocalizations(context)!.cancel,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(
                    Size(
                      150.w,
                      45.h,
                    ),
                  ),
                ),
                child: Text(
                  getAppLocalizations(context)!.confirm,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
