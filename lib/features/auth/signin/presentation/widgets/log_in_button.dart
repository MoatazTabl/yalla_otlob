import 'package:yalla_otlob/core/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/helpers/common.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.emailNameRouter,
  }) : _formKey = formKey;

  final TextEditingController emailNameRouter;
  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(50.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          if (emailNameRouter.text.toLowerCase() == "admin") {
            context.pushReplacement(AppStrings.adminHomeScreenRoute);
          } else if (emailNameRouter.text.toLowerCase() == "driver") {
            context.pushReplacement(AppStrings.driverHomeScreenRoute);
          } else if (emailNameRouter.text.toLowerCase() == "restaurant") {
            context.pushReplacement(AppStrings.restaurantHomeScreenRoute);
          } else if (emailNameRouter.text.toLowerCase() == "pharmacy") {
            context.pushReplacement(AppStrings.pharmacyHomeScreenRoute);
          } else if (emailNameRouter.text.toLowerCase() == "market") {
            context.pushReplacement(AppStrings.marketHomeScreenRoute);
          } else if (emailNameRouter.text.toLowerCase() == "wsly") {
            context.pushReplacement(AppStrings.wslyHomeScreenRoute);
          } else if (emailNameRouter.text.toLowerCase() == "user") {
            context.pushReplacement(AppStrings.userMainScreenRoute);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  "admin or driver or restaurant or pharmacy or market or wsly or user.",
                ),
              ),
            );
          }
        }
      },
      child: Text(
        getAppLocalizations(context)!.login,
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
