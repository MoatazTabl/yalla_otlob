import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:dahab_delivery/features/user/presentation/widgets/confirm_button_widget.dart';
import 'package:dahab_delivery/features/user/presentation/widgets/google_maps_widget.dart';
import 'package:dahab_delivery/features/user/presentation/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/add_items_text_field_pharmacy.dart';
import 'widget/add_picture_prescription.dart';
import 'widget/items_list_view_pharmacy_widget.dart';

class UserPharmacyPageScreen extends StatefulWidget {
  const UserPharmacyPageScreen({super.key});

  @override
  State<UserPharmacyPageScreen> createState() => _UserPharmacyPageScreenState();
}

class _UserPharmacyPageScreenState extends State<UserPharmacyPageScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getAppLocalizations(context)!.pharmacy),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const AddItemTextFieldPharmacy(),
            const SizedBox(height: 20),
            const ItemsListViewPharmacyWidget(),
            SizedBox(
              height: 10.h,
            ),
            const AddPicturePrescription(),
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
