import 'package:yalla_otlob/core/app_images.dart';
import 'package:flutter/material.dart';

import 'widgets/order_detail_widget.dart';

class UserOrderInfoScreenPage extends StatelessWidget {
  const UserOrderInfoScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return OrderDetailWidget(
                imgPath: AppImages.foodPic,
              );
            },
          ),
        )
      ],
    );
  }
}

