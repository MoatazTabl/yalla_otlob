import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/common.dart';
import '../../manager/market_cubit.dart';

class AddItemTextFieldMarketWidget extends StatefulWidget {
  const AddItemTextFieldMarketWidget({super.key});

  @override
  State<AddItemTextFieldMarketWidget> createState() => _AddItemTextFieldMarketWidgetState();
}

class _AddItemTextFieldMarketWidgetState extends State<AddItemTextFieldMarketWidget> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit=context.watch<MarketCubit>();
    return TextField(
      controller: _textController,
      decoration: InputDecoration(
        labelText: getAppLocalizations(context)!.addAnItem,
        hintText: getAppLocalizations(context)!.typeAnItem,
        suffixIcon: IconButton(
          onPressed: () {
            cubit.addOption(_textController.text);
            _textController.clear();
          },
          icon: const Icon(Icons.keyboard_return),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            14,
          ),
        ),
      ),
      onSubmitted: (value) {
        cubit.addOption(value);
        _textController.clear();
      },
    );
  }



  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
