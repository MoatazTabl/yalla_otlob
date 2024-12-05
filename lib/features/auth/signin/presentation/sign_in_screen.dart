import 'package:yalla_otlob/core/app_strings.dart';
import 'package:yalla_otlob/core/helpers/common.dart';
import 'package:yalla_otlob/features/auth/signin/presentation/widgets/create_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/yalla_otlob_image_widget.dart';
import 'widgets/log_in_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final FocusNode _focusNodePassword = FocusNode();
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100.h,
                ),
                YallaOtlobImageWidget(
                  height: 120.w,
                  width: 120.w,
                ),
                Text(
                  AppStrings.appName,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextFormField(
                  controller: _controllerUsername,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: getAppLocalizations(context)?.userName,
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.grey[600],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                  onEditingComplete: () => _focusNodePassword.requestFocus(),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return getAppLocalizations(context)?.pleaseEnterUserName;
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  controller: _controllerPassword,
                  focusNode: _focusNodePassword,
                  obscureText: _obscurePassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: getAppLocalizations(context)?.password,
                    prefixIcon: Icon(
                      Icons.password_outlined,
                      color: Colors.grey[600],
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: _obscurePassword
                          ? Icon(
                              Icons.visibility_outlined,
                              color: Colors.grey[600],
                            )
                          : Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.grey[600],
                            ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return getAppLocalizations(context)?.pleaseEnterPassword;
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 50.h,
                ),
                LogInButton(
                  formKey: _formKey,
                  emailNameRouter: _controllerUsername,
                ),
                CreateAccountTextWidget(
                  formKey: _formKey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controllerPassword.dispose();
    _controllerUsername.dispose();
    _focusNodePassword.dispose();

    super.dispose();
  }
}
