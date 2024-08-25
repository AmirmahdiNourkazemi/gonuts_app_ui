import 'package:flutter/material.dart';

Widget CustomButton(String text, VoidCallback onPress) {
  return ElevatedButton(onPressed: onPress, child: Text(text));
}
