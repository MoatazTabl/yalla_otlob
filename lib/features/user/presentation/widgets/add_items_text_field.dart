import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/common.dart';
import '../../manager/pharmacy_cubit.dart';

class AddItemTextFieldPharmacy extends StatefulWidget {
  const AddItemTextFieldPharmacy({super.key});

  @override
  State<AddItemTextFieldPharmacy> createState() => _AddItemTextFieldPharmacyState();
}

class _AddItemTextFieldPharmacyState extends State<AddItemTextFieldPharmacy> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit=context.watch<PharmacyCubit>();
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
