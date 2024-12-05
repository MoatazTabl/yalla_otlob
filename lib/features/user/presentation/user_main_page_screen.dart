import 'package:yalla_otlob/core/helpers/common.dart';
import 'package:yalla_otlob/features/user/presentation/user_history_page_screen.dart';
import 'package:yalla_otlob/features/user/presentation/user_settings_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'user_order_info_screen_page.dart';
import 'user_home_page_screen.dart';

class UserMainPageScreen extends StatefulWidget {
  const UserMainPageScreen({super.key});

  @override
  State<UserMainPageScreen> createState() => _UserMainPageScreenState();
}

class _UserMainPageScreenState extends State<UserMainPageScreen> {
  int currentIndex = 0;
  String? appBarTitleText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Text(
            appBarTitleText ?? getAppLocalizations(context)!.home,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: const [
          HomePageScreen(),
          UserOrderInfoScreenPage(),
          UserHistoryPageScreen(),
          UserSettingsPageScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          _onTap(context, value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.delivery_dining,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: "",
          ),
        ],
      ),
    );
  }

  void _onTap(
    BuildContext context,
    int index,
  ) {
    setState(
      () {
        currentIndex = index;
        if (index == 0) {
          appBarTitleText = getAppLocalizations(context)!.home;
        } else if (index == 1) {
          appBarTitleText = getAppLocalizations(context)!.orderDetail;
        } else if (index == 2) {
          appBarTitleText = getAppLocalizations(context)!.history;
        } else if (index == 3) {
          appBarTitleText = getAppLocalizations(context)!.settings;
        }
      },
    );
  }
}
