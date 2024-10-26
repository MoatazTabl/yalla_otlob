import 'package:flutter/material.dart';

import 'widgets/history_order_detail_widget.dart';

class UserHistoryPageScreen extends StatelessWidget {
  const UserHistoryPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
       Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return const HistoryOrderDetailWidget();
              },
            ),
          )
        ],

    );
  }
}

