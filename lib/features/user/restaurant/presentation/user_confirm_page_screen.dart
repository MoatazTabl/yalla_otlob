import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:dahab_delivery/features/user/presentation/widgets/confirm_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/approx_delivery_time_widget.dart';
import '../../presentation/widgets/text_form_field_widget.dart';
import '../../presentation/widgets/google_maps_widget.dart';

class UserConfirmPageScreen extends StatefulWidget {
  const UserConfirmPageScreen({super.key});

  @override
  State<UserConfirmPageScreen> createState() => _UserConfirmPageScreenState();
}

class _UserConfirmPageScreenState extends State<UserConfirmPageScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController notesController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getAppLocalizations(context)!.confirmOrder),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            const Align(
              alignment: Alignment.center,
              child: GoogleMapsWidget(),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormFieldWidget(
              controller: nameController,
              labelText: getAppLocalizations(context)!.name,
              initialText: 'Moataz',
            ),
            TextFormFieldWidget(
              controller: phoneController,
              labelText: getAppLocalizations(context)!.phone,
              initialText: '0106903000',
              // validator: phoneValidator,
            ),
            TextFormFieldWidget(
              controller: addressController,
              labelText: getAppLocalizations(context)!.address,
              initialText: 'شارع دهب الرئيسي',
            ),
            TextFormFieldWidget(
              controller: notesController,
              labelText: getAppLocalizations(context)!.notes,
              initialText: '',
            ),
            const ApproxDeliveryTimeWidget(),
          ],
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [
        ConfirmButtonWidget(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    getAppLocalizations(context)!.orderConfirmed,
                  ),
                ),
              );
            }
          },
        )
      ],
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    notesController.dispose();
    super.dispose();
  }

  String? phoneValidator(String? value) {

    final regex = RegExp(r"^(010|011|012|015)\d{8}$");
    if (!regex.hasMatch(value!)) {
      return getAppLocalizations(context)!.pleaseEnterCorrectPhoneNumber;
    }
    return null;
  }
}
