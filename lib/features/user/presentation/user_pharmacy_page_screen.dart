import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:dahab_delivery/features/user/presentation/widgets/add_picture_prescription.dart';
import 'package:dahab_delivery/features/user/presentation/widgets/confirm_button_widget.dart';
import 'package:dahab_delivery/features/user/presentation/widgets/items_list_view_pharmacy_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/add_items_text_field.dart';

class UserPharmacyPageScreen extends StatefulWidget {
  const UserPharmacyPageScreen({super.key});

  @override
  State<UserPharmacyPageScreen> createState() => _UserPharmacyPageScreenState();
}

class _UserPharmacyPageScreenState extends State<UserPharmacyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getAppLocalizations(context)!.pharmacy),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const AddItemTextFieldPharmacy(),
            const SizedBox(height: 20),
            const ItemsListViewPharmacyWidget(),
            SizedBox(
              height: 10.h,
            ),
            const AddPicturePrescription(),
          ],
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [ConfirmButtonWidget(onPressed: () {})],
    );
  }
}


