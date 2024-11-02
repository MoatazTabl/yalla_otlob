import 'package:dahab_delivery/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PartnerRestaurantHomePage extends StatefulWidget {
  const PartnerRestaurantHomePage({super.key});

  @override
  State<PartnerRestaurantHomePage> createState() =>
      _PartnerRestaurantHomePageState();
}

class _PartnerRestaurantHomePageState extends State<PartnerRestaurantHomePage> {
  bool shiftStarted = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  shiftStarted = !shiftStarted;
                });
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  shiftStarted ? AppTheme.mainRed : Colors.white70,
                ),
                minimumSize: WidgetStatePropertyAll(
                  Size(
                    300.w,
                    65.h,
                  ),
                ),
              ),
              child: shiftStarted
                  ? Text(
                      "Start Shift",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: Colors.white),
                    )
                  : Text(
                      "End Shift",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: Colors.black87),
                    ),
            ),
          ),
        ),
        
        Container(
          height: 550.h,
          width: 330.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey)
          ),
          child: ListView.builder(itemBuilder: (context, index) {
            return const RequestedOrderItem();
          },),
        )
      ],
    );
  }
}
class RequestedOrderItem extends StatelessWidget {
  const RequestedOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
