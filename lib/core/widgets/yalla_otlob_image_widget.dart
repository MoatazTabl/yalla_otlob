import 'package:yalla_otlob/core/app_images.dart';
import 'package:flutter/material.dart';


class YallaOtlobImageWidget extends StatelessWidget {
  const YallaOtlobImageWidget({
    super.key, required this.height, required this.width,
  });
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        AppImages.yallaOtlobLogo,
      ),
      height: height,
      width: width,
      fit: BoxFit.contain,
    );
  }
}
