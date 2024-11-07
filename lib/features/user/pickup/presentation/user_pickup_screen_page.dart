import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:dahab_delivery/features/user/presentation/widgets/confirm_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../presentation/widgets/text_form_field_widget.dart';
import 'widgets/choose_location_widget.dart';
import 'widgets/custom_drop_down_form_field_widget.dart';

class UserPickUpScreenPage extends StatefulWidget {
  const UserPickUpScreenPage({super.key});

  @override
  State<UserPickUpScreenPage> createState() => _UserPickUpScreenPageState();
}

class _UserPickUpScreenPageState extends State<UserPickUpScreenPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController pickUpAddressController = TextEditingController();
  TextEditingController arriveDestinationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          getAppLocalizations(context)!.wslny,
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              getAppLocalizations(context)!.pickUpAddress,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.black87
                        : Colors.white,
                  ),
              textAlign: TextAlign.center,
            ),
            const ChooseLocationWidget(),
            // const GoogleMapsWidget(),
            TextFormFieldWidget(
                controller: phoneController,
                labelText: getAppLocalizations(context)!.phone,
                initialText: "01022300021"),
            TextFormFieldWidget(
                controller: pickUpAddressController,
                labelText: getAppLocalizations(context)!.arriveDestination,
                initialText: ""),
            Text(
              getAppLocalizations(context)!.arriveDestination,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.black87
                        : Colors.white,
                  ),
              textAlign: TextAlign.center,
            ),
            const ChooseLocationWidget(),
            TextFormFieldWidget(
                controller: arriveDestinationController,
                labelText: getAppLocalizations(context)!.arriveDestination,
                initialText: ""),
            SizedBox(
              height: 10.h,
            ),
            const Center(child: CustomDropDownFormField()),
          ],
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [ConfirmButtonWidget(onPressed: () {})],
    );
  }

  @override
  void dispose() {
    phoneController.dispose();
    arriveDestinationController.dispose();
    pickUpAddressController.dispose();
    super.dispose();
  }
}
