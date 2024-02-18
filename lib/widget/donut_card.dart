import 'package:flutter/material.dart';

Widget createDonutCard(
  BuildContext context,
  String name,
  String imagePath,
  String description,
  String price,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 131,
              height: 180,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
            ),
            Container(
              width: 130,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
            Positioned(
              bottom: 90,
              child: Image.asset(
                imagePath,
                width: 80,
              ),
            ),
            Positioned(
              bottom: 70,
              child: Text(
                description,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Positioned(
              bottom: 40,
              child: Text(
                price,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
