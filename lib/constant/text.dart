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
      bodyMedium: TextStyle(
        fontSize: 30,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        fontSize: 12,
        color: Colors.black54,
        fontWeight: FontWeight.normal,
      ),
      headlineMedium: TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w700,
      ),
      labelMedium: TextStyle(
        fontSize: 25,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    );
  }
}
