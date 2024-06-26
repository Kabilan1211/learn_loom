import 'package:flutter/material.dart';

class ImageAsset extends StatelessWidget {
  const ImageAsset(
      {super.key,
      required this.path,
      required this.height,
      required this.width,
      });
  final String path;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: height,
      width: width,
      fit: BoxFit.cover
    );
  }
}
