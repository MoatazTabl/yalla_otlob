import 'package:flutter/material.dart';

import '../app_strings.dart';

class DahabImageWidget extends StatelessWidget {
  const DahabImageWidget({
    super.key, required this.height, required this.width,
  });
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        AppStrings.dahabLogo,
      ),
      height: height,
      width: width,
      fit: BoxFit.contain,
    );
  }
}
