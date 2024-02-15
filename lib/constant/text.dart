import 'package:flutter/material.dart';
import 'package:gonuts/constant/color.dart';

class CustomTextTheme {
  TextTheme getTextTheme(BuildContext context) {
    return const TextTheme(
      titleLarge: TextStyle(
        fontSize: 54,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        fontSize: 20,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
