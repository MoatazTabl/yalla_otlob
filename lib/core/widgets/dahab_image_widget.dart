import 'package:dahab_delivery/core/app_images.dart';
import 'package:flutter/material.dart';


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
        AppImages.dahabLogo,
      ),
      height: height,
      width: width,
      fit: BoxFit.contain,
    );
  }
}
