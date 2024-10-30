import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../presentation/widgets/google_maps_widget.dart';
import '../../presentation/widgets/text_form_field_widget.dart';
import 'widget/add_item_text_field_market_widget.dart';
import '../../presentation/widgets/confirm_button_widget.dart';
import 'widget/items_list_view_market_widget.dart';

class UserMarketPageScreen extends StatefulWidget {
  const UserMarketPageScreen({super.key});

  @override
  State<UserMarketPageScreen> createState() => _UserMarketPageScreenState();
}

class _UserMarketPageScreenState extends State<UserMarketPageScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(getAppLocalizations(context)!.market),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 20.h,),
            const AddItemTextFieldMarketWidget(),
            SizedBox(height: 20.h,),
            const ItemsListViewMarketWidget(),
            const SizedBox(height: 10,),
            const GoogleMapsWidget(),
            const SizedBox(height: 10,),

            TextFormFieldWidget(
                controller: nameController,
                labelText: getAppLocalizations(context)!.name,
                initialText: "Moataz"),
            const SizedBox(height: 10,),
            TextFormFieldWidget(
                controller: phoneController,
                labelText: getAppLocalizations(context)!.phone,
                initialText: "01053323404"),

          ],
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [ConfirmButtonWidget(onPressed: () {})],
    );
  }
  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}



