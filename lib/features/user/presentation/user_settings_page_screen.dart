import 'package:yalla_otlob/core/app_strings.dart';
import 'package:yalla_otlob/core/helpers/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'widgets/custom_list_tile_widget.dart';

class UserSettingsPageScreen extends StatefulWidget {
  const UserSettingsPageScreen({super.key});

  @override
  State<UserSettingsPageScreen> createState() => _UserSettingsPageScreenState();
}

class _UserSettingsPageScreenState extends State<UserSettingsPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomListTileWidget(
          title: getAppLocalizations(context)!.profile,
          icon: const Icon(Icons.person_outline_rounded),
          onTap: () {
            context.push(AppStrings.userProfileScreenRoute);
          },
        ),
       CustomListTileWidget(
          title: getAppLocalizations(context)!.address,
          icon: const Icon(FontAwesomeIcons.addressCard),
          onTap: () {
            context.push(AppStrings.userProfileScreenRoute);
          },
        ),
        CustomListTileWidget(
          title: getAppLocalizations(context)!.about,
          icon: const Icon(Icons.info_outline_rounded),
          onTap: () {
            context.push(AppStrings.userAboutScreenRoute);
          },
        ),
        CustomListTileWidget(
          title: getAppLocalizations(context)!.signOut,
          icon: const Icon(FontAwesomeIcons.rightFromBracket),
          onTap: () {
            context.go(AppStrings.loginScreenRoute);
          },
        ),
      ],
    );
  }
}
