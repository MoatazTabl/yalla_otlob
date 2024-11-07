import 'package:flutter/material.dart';

class CustomListTileWidget extends StatelessWidget {
  final String title;
  final Icon icon;
  final Widget? trailing;

  const CustomListTileWidget(
      {super.key,
        required this.title,
        required this.icon,
        this.trailing,
        this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black87
                : Colors.white),
      ),
      leading: icon,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
