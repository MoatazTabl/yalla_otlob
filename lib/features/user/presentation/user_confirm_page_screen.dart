import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:dahab_delivery/features/user/presentation/widgets/confirm_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/approx_delivery_time_widget.dart';
import 'widgets/confirm_textfield_widget.dart';
import 'widgets/google_maps_widget.dart';

class UserConfirmPageScreen extends StatefulWidget {
  const UserConfirmPageScreen({super.key});

  @override
  State<UserConfirmPageScreen> createState() => _UserConfirmPageScreenState();
}

class _UserConfirmPageScreenState extends State<UserConfirmPageScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getAppLocalizations(context)!.confirmOrder),
      ),
      body: ListView(

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
          ConfirmTextFieldWidget(
            controller: nameController,
            labelText: getAppLocalizations(context)!.name,
            initialText: 'Moataz',
          ),
          ConfirmTextFieldWidget(
            controller: phoneController,
            labelText: getAppLocalizations(context)!.phone,
            initialText: '0106903000',
          ),ConfirmTextFieldWidget(
            controller: phoneController,
            labelText: getAppLocalizations(context)!.address,
            initialText: 'شارع دهب الرئيسي',
          ),
          ConfirmTextFieldWidget(
            controller: notesController,
            labelText: getAppLocalizations(context)!.notes,
            initialText: '',
          ),
          const ApproxDeliveryTimeWidget(),
        ],
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [
        ConfirmButtonWidget(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  getAppLocalizations(context)!.orderConfirmed,
                ),
              ),
            );
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
}
