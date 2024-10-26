import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../manager/market_cubit.dart';

class ItemsListViewMarketWidget extends StatefulWidget {
  const ItemsListViewMarketWidget({super.key});

  @override
  State<ItemsListViewMarketWidget> createState() => _ItemsListViewMarketWidgetState();
}

class _ItemsListViewMarketWidgetState extends State<ItemsListViewMarketWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var cubit = context.watch<MarketCubit>();
    return Container(
      height: 300.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: BlocBuilder<MarketCubit, MarketState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsetsDirectional.only(top: 5.h, end: 5.w),
            child: Scrollbar(
              controller: _scrollController,
              thumbVisibility: true,
              child: ListView.builder(
                controller: _scrollController,
                itemCount: cubit.pollOptions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      cubit.pollOptions[index],
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => cubit.deleteOption(index),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }


  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
