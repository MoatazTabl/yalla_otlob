import 'package:dahab_delivery/core/app_font.dart';
import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:dahab_delivery/features/user/presentation/widgets/confirm_button_widget.dart';
import 'package:dahab_delivery/features/user/presentation/widgets/custom_list_tile_widget.dart';
import 'package:dahab_delivery/features/user/presentation/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfileScreenPage extends StatelessWidget {
  const UserProfileScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          getAppLocalizations(context)!.profile,
          style: Theme
              .of(context)
              .textTheme
              .labelLarge,
        ),
      ),
      body: Column(
        children: [
          CustomListTileWidget(
            title: "${getAppLocalizations(context)!.name}: Moataz Tabl",
            icon: const Icon(FontAwesomeIcons.user),
            trailing: const FaIcon(FontAwesomeIcons.penToSquare),
            onTap: () {
              editDetails(
                context,
                initialText: 'Moataz',
                labelText: getAppLocalizations(context)!.name,
              );
            },
          ),
          const Divider(),
          CustomListTileWidget(
            title: "${getAppLocalizations(context)!.phone}: 0105848432",
            icon: const Icon(FontAwesomeIcons.phone),
            trailing: const FaIcon(FontAwesomeIcons.penToSquare),
            onTap: () {
              editDetails(context,
                  initialText: "0213023101230",
                  labelText: getAppLocalizations(context)!.phone);
            },
          ),
          const Divider(),
          CustomListTileWidget(
            title: "${getAppLocalizations(context)!.gender}: Male",
            icon: const Icon(FontAwesomeIcons.user),
          ),
          const Divider(),
          CustomListTileWidget(
            title: "${getAppLocalizations(context)!.email}: moataz@gmail.com",
            icon: const Icon(FontAwesomeIcons.envelope),
          ),
          const Divider(),
          CustomListTileWidget(
            title: "${getAppLocalizations(context)!.password}: **************",
            icon: const Icon(FontAwesomeIcons.lock),
            trailing: const FaIcon(FontAwesomeIcons.penToSquare),
            onTap: () {
              editPassword(context,);
            },
          ),
          const Divider(),
          const Spacer(),
          SizedBox(
            height: 55,
            width: .87.sw,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                getAppLocalizations(context)!.deleteAccount,
                style: Theme
                    .of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}

Future<void> editPassword(BuildContext context) async {
  TextEditingController oldPassController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  await showModalBottomSheet(
    context: context,
    builder: (context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextFormFieldWidget(
              controller: oldPassController,
              labelText: getAppLocalizations(context)!.oldPass,
              initialText: ""),
          TextFormFieldWidget(
              controller: oldPassController,
              labelText: getAppLocalizations(context)!.newPass,
              initialText: ""),
          TextFormFieldWidget(
              controller: oldPassController,
              labelText: getAppLocalizations(context)!.confirmPassword,
              initialText: ""),
          ConfirmButtonWidget(
            onPressed: () {},
          )
        ],
      );
    },
  ).whenComplete(
        () {
      oldPassController.dispose();
      newPassController.dispose();
      confirmPassController.dispose();
    },
  );
}

Future<void> editDetails(BuildContext context, {
  required String initialText,
  required String labelText,
}) async {
  TextEditingController controller = TextEditingController();

  await showModalBottomSheet(
    context: context,
    builder: (context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextFormFieldWidget(
              controller: controller,
              labelText: labelText,
              initialText: initialText),
          ConfirmButtonWidget(
            onPressed: () {},
          )
        ],
      );
    },
  ).whenComplete(
        () {
      controller.dispose();
    },
  );
}
