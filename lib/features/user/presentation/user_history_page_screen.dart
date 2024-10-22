import 'package:flutter/material.dart';

import '../../../core/helpers/common.dart';
import 'widgets/order_detail_widget.dart';

class UserHistoryPageScreen extends StatelessWidget {
  const UserHistoryPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          getAppLocalizations(context)!.orders,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return const OrderDetailWidget();
              },
            ),
          )
        ],
      ),
    );
  }
}

