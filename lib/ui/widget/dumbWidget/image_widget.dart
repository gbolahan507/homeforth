import 'package:flutter/material.dart';
import 'package:revieuus/ui/widget/shared/config.dart';

class ImageWidget extends StatelessWidget {
  final image;

  ImageWidget({this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.fill,
      // height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
    );
  }
}
