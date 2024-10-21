import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/app_strings.dart';

class CreateAccountTextWidget extends StatelessWidget {
  const CreateAccountTextWidget({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(getAppLocalizations(context)!.dontHaveAccount,
          style: Theme.of(context).textTheme.headlineSmall,),
        TextButton(
          onPressed: () {
            _formKey.currentState?.reset();

            context.push(AppStrings.signupScreenRoute);
          },
          child: Text(
            getAppLocalizations(context)!.signUp,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.red,),
          ),
        ),
      ],
    );
  }
}