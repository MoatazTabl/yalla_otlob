import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/available_pharmacy_widget.dart';

class UserAvailablePharmacyPageScreen extends StatelessWidget {
  const UserAvailablePharmacyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getAppLocalizations(context)!.pharmacy),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              getAppLocalizations(context)!.pharmacies,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black87),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return AvailablePharmacyWidget(
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

