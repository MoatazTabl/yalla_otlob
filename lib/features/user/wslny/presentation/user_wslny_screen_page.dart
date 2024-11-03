import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:flutter/material.dart';

class UserWslnyScreenPage extends StatelessWidget {
  const UserWslnyScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          getAppLocalizations(context)!.wslny,
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
