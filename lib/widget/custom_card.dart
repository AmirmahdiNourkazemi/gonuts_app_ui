import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gonuts/constant/color.dart';
import 'package:gonuts/detail_screen.dart';

Widget customCard(
  BuildContext context, {
  Color cardColor = const Color(0xffD7E4F6),
  double top = 30,
  double left = 80,
  String imagePath = 'assets/images/offer_2.png',
  double imageWidth = 180,
  String title = 'Strawberry Wheel',
  String description =
      'These Baked Strawberry Donuts are filled with fresh strawberries...',
  String originalPrice = '\$20',
  String discountedPrice = '\$16',
}) {
  return InkWell(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return DetailScreen(
                imagePath, cardColor, title, description, discountedPrice);
          },
        ),
      );
    },
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: 220,
            height: 350,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
          ),
        ),
        Positioned(
          child: Container(
            width: 193,
            height: 350,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 1),
                ),
              ],
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
              color: cardColor,
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 15,
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.favorite_border_outlined,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        Positioned(
          top: top,
          left: left,
          child: Hero(
            tag: title,
            child: Image.asset(
              imagePath,
              width: imageWidth,
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 100,
          child: Text(
            title,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        Positioned(
          left: 10,
          bottom: 45,
          child: SizedBox(
            width: 180,
            child: Text(
              description,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
        Positioned(
          left: 100,
          bottom: 20,
          child: Text(
            originalPrice,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ),
        Positioned(
          left: 130,
          bottom: 15,
          child: Text(
            discountedPrice,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        )
      ],
    ),
  );
}
