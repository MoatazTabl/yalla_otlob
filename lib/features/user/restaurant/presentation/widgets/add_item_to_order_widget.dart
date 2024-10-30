import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../manager/menu_cubit.dart';
import 'restaurant_menu_item_widget.dart';

class AddItemToOrder extends StatelessWidget {
  const AddItemToOrder({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.watch<MenuCubit>();
    return Container(
      height: 50.h,
      width: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: StatefulBuilder(
        builder: (context, setState) => IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            cubit.addToItems();
            chooseSize(context);
            setState(() {});
          },
          icon: Icon(
            Icons.add,
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black87
                : Colors.white,
          ),
        ),
      ),
    );
  }
}
