import 'package:flutter/material.dart';

double calculateAspectRatio(BuildContext context, Size screenSize) {
  final double width = screenSize.width;
  final double height = screenSize.height;
  // return widget.playOptions.aspectRatio ?? controller.value.aspectRatio;
  return width > height ? width / height : height / width;
}
