import 'package:dahab_delivery/core/helpers/common.dart';
import 'package:dahab_delivery/core/widgets/dahab_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/app_strings.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final FocusNode _focusNodeEmail = FocusNode();
  final FocusNode _focusNodePhone = FocusNode();
  final FocusNode _focusNodeAddressOne = FocusNode();
  final FocusNode _focusNodeAddressTwo = FocusNode();
  final FocusNode _focusNodePassword = FocusNode();
  final FocusNode _focusNodeConfirmPassword = FocusNode();
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerAddressOne = TextEditingController();
  final TextEditingController _controllerAddressTwo = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerConFirmPassword =
      TextEditingController();

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              SizedBox(height: 30.h),
              DahabImageWidget(height: 120.w, width: 120.w),
              Text(
                AppStrings.appName,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                AppStrings.deliveryService,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 10.h),
              Text(
                getAppLocalizations(context)!.createYourAccount,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 18.sp),
              ),
              SizedBox(height: 35.h),
              TextFormField(
                controller: _controllerName,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: getAppLocalizations(context)?.name,
                  prefixIcon:  Icon(Icons.person_outline,color: Colors.grey[600],),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return getAppLocalizations(context)?.pleaseEnterName;
                  }

                  return null;
                },
                onEditingComplete: () => _focusNodeEmail.requestFocus(),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                controller: _controllerEmail,
                focusNode: _focusNodeEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: getAppLocalizations(context)?.email,
                  prefixIcon:  Icon(Icons.email_outlined,color: Colors.grey[600],),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return getAppLocalizations(context)?.pleaseEnterEmail;
                  } else if (!(value.contains('@') && value.contains('.'))) {
                    return getAppLocalizations(context)?.invalidEmail;
                  }
                  return null;
                },
                onEditingComplete: () => _focusNodeAddressOne.requestFocus(),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                controller: _controllerPhone,
                focusNode: _focusNodePhone,
                keyboardType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  labelText: getAppLocalizations(context)?.phone,
                  prefixIcon:  Icon(Icons.phone,color: Colors.grey[600],),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return getAppLocalizations(context)?.pleaseEnterPhone;
                  }
                  final regex = RegExp(r"^(010|011|012|015)\d{8}$");
                  if(!regex.hasMatch(value))
                    {
                      return getAppLocalizations(context)?.pleaseEnterCorrectPhoneNumber;
                    }
                  return null;
                },
                onEditingComplete: () => _focusNodeAddressOne.requestFocus(),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                controller: _controllerAddressOne,
                focusNode: _focusNodeAddressOne,
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  labelText: getAppLocalizations(context)?.address1,
                  prefixIcon:  Icon(Icons.my_location,color: Colors.grey[600],),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return getAppLocalizations(context)?.pleaseEnterAddress;
                  }
                  return null;
                },
                onEditingComplete: () => _focusNodeAddressTwo.requestFocus(),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                controller: _controllerAddressTwo,
                focusNode: _focusNodeAddressTwo,
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  labelText: getAppLocalizations(context)?.address2,
                  prefixIcon:  Icon(Icons.my_location,color: Colors.grey[600],),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onEditingComplete: () => _focusNodePassword.requestFocus(),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                controller: _controllerPassword,
                obscureText: _obscurePassword,
                focusNode: _focusNodePassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: getAppLocalizations(context)?.password,
                  prefixIcon:  Icon(Icons.password_outlined,color: Colors.grey[600],),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: _obscurePassword
                          ?  Icon(Icons.visibility_outlined,color: Colors.grey[600],)
                          :  Icon(Icons.visibility_off_outlined,color: Colors.grey[600],),),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return getAppLocalizations(context)?.pleaseEnterPassword;
                  } else if (value.length < 8) {
                    return getAppLocalizations(context)
                        ?.passMustBeMoreThan8Char;
                  }
                  return null;
                },
                onEditingComplete: () =>
                    _focusNodeConfirmPassword.requestFocus(),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                controller: _controllerConFirmPassword,
                obscureText: _obscurePassword,
                focusNode: _focusNodeConfirmPassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: getAppLocalizations(context)?.confirmPassword,
                  prefixIcon:  Icon(Icons.password_outlined,color: Colors.grey[600],),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: _obscurePassword
                          ?  Icon(Icons.visibility_outlined,color: Colors.grey[600],)
                          :  Icon(Icons.visibility_off_outlined,color: Colors.grey[600],)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return getAppLocalizations(context)?.pleaseEnterPassword;
                  } else if (value != _controllerPassword.text) {
                    return getAppLocalizations(context)?.passDontMatch;
                  }
                  return null;
                },
              ),
              SizedBox(height: 50.h),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            width: 200,
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            behavior: SnackBarBehavior.floating,
                            content: const Text("Registered Successfully"),
                          ),
                        );

                        _formKey.currentState?.reset();

                        Navigator.pop(context);
                      }
                    },
                    child: Text(getAppLocalizations(context)!.register,style: Theme.of(context).textTheme.labelLarge,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(getAppLocalizations(context)!.alreadyHaveAnAccount),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          getAppLocalizations(context)!.login,
                          style: GoogleFonts.roboto(fontSize: 21.sp,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNodeEmail.dispose();
    _focusNodePhone.dispose();
    _focusNodeAddressOne.dispose();
    _focusNodeAddressTwo.dispose();
    _focusNodePassword.dispose();
    _focusNodeConfirmPassword.dispose();
    _controllerName.dispose();
    _controllerEmail.dispose();
    _controllerPhone.dispose();
    _controllerAddressOne.dispose();
    _controllerAddressTwo.dispose();
    _controllerPassword.dispose();
    _controllerConFirmPassword.dispose();
    super.dispose();
  }
}
