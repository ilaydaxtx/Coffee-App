import 'package:flutter/material.dart';

class ImageUtils {
  Widget ImageAsset({required double height, required double width, required String imagePath}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("assets/$imagePath"),
            fit: BoxFit.fill,
          )),
    );
  }
}
