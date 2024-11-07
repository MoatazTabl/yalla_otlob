import 'package:dahab_delivery/core/app_strings.dart';
import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:dahab_delivery/features/user/presentation/widgets/custom_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/url_launcher.dart';

class UserAboutScreenPage extends StatelessWidget {
  const UserAboutScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getAppLocalizations(context)!.about),
      ),
      body: Column(
        children: [
          CustomListTileWidget(
            title: "Facebook",
            icon: const Icon(FontAwesomeIcons.facebook),
            onTap: () {
              launchLink(url: AppStrings.faceBookLink);
            },
          ),
          CustomListTileWidget(
            title: "Instagram",
            icon: const Icon(FontAwesomeIcons.instagram),
            onTap: () {
              launchLink(url: AppStrings.instagramLink);
            },
          ),
          CustomListTileWidget(
            title: "WhatsApp",
            icon: const Icon(FontAwesomeIcons.whatsapp),
            onTap: () {
              launchWhatsApp(number: AppStrings.whatsAppNumber);
            },
          ),
          const Divider(),
          Text(
            getAppLocalizations(context)!.privacyPolicy,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black87
                      : Colors.white,
                ),
          ),
          Expanded(
            child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString(AppStrings.privacyPolicy),
              builder: (context, snapshot) {
                return Markdown(
                  data: snapshot.data ?? "",
                  
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
