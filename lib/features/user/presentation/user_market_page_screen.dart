import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/add_item_text_field_market_widget.dart';
import 'widgets/confirm_button_widget.dart';
import 'widgets/items_list_view_market_widget.dart';

class UserMarketPageScreen extends StatelessWidget {
  const UserMarketPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(getAppLocalizations(context)!.market),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            const AddItemTextFieldMarketWidget(),
            SizedBox(height: 20.h,),
            const ItemsListViewMarketWidget(),
          ],
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [ConfirmButtonWidget(onPressed: () {})],
    );
  }
}



