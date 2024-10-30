import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app_strings.dart';
import '../../presentation/widgets/confirm_button_widget.dart';
import 'widgets/order_detail_widget.dart';

class UserOrderDetailPageScreen extends StatelessWidget {
  const UserOrderDetailPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getAppLocalizations(context)!.orderDetail),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const OrderDetailWidget();
              },
            ),
          )
        ],
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [
        ConfirmButtonWidget(
          onPressed: () {
            context.push(AppStrings.userConfirmScreenRoute);
          },
        ),
      ],
    );
  }
}
