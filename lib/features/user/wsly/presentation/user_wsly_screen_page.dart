import 'package:yalla_otlob/core/helpers/common.dart';
import 'package:yalla_otlob/features/user/presentation/widgets/small_google_maps_widget.dart';
import 'package:yalla_otlob/features/user/presentation/widgets/text_form_field_widget.dart';
import 'package:yalla_otlob/features/user/presentation/widgets/confirm_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'widget/add_picture_description_widget.dart';

class UserWslyScreenPage extends StatefulWidget {
  const UserWslyScreenPage({super.key});

  @override
  State<UserWslyScreenPage> createState() => _UserWslyScreenPageState();
}

class _UserWslyScreenPageState extends State<UserWslyScreenPage> {
  TextEditingController recipientNumberController = TextEditingController();
  TextEditingController senderNumberController = TextEditingController();
  TextEditingController senderLocationController = TextEditingController();
  TextEditingController recipientLocationController = TextEditingController();
  TextEditingController itemDescriptionController = TextEditingController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getAppLocalizations(context)!.wsly),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                getAppLocalizations(context)!.recipientLocation,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black87
                          : Colors.white,
                    ),
              ),
              const SmallGoogleMapsWidget(currentLocation: LatLng(312, 23),),
              TextFormFieldWidget(
                  controller: senderNumberController,
                  labelText: getAppLocalizations(context)!.phone,
                  initialText: "01022300021"),
              TextFormFieldWidget(
                  controller: recipientNumberController,
                  labelText: getAppLocalizations(context)!.recipientNumber,
                  initialText: ""),
              TextFormFieldWidget(
                  controller: senderLocationController,
                  labelText: getAppLocalizations(context)!.senderLocation,
                  initialText: ""),
              TextFormFieldWidget(
                  controller: recipientLocationController,
                  labelText: getAppLocalizations(context)!.recipientLocation,
                  initialText: ""),
              TextFormFieldWidget(
                  controller: itemDescriptionController,
                  labelText: getAppLocalizations(context)!.itemDescription,
                  initialText: ""),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: const AddPictureDescription(),
              ),
            ],
          ),
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [
        ConfirmButtonWidget(onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                getAppLocalizations(context)!.warning,
              ),
              alignment: Alignment.center,
              content: Text(getAppLocalizations(context)!.itemMustNotExceed40Kg),
              actions: [
                TextButton(
                  onPressed: () {
                    context.pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text(getAppLocalizations(context)!.orderConfirmed),
                      ),
                    );
                  },
                  child: Text(
                    getAppLocalizations(context)!.ok,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: Text(
                    getAppLocalizations(context)!.cancel,
                  ),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
