import 'package:flutter/material.dart';
import 'package:gonuts/constant/color.dart';
import 'package:gonuts/widget/search_widget.dart';

import 'widget/custom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 39),
            child: SearchWidget(),
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 39),
            child: Text(
              'Today Offers',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const OfferBuilder(),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 39),
            child: Text(
              'Donuts',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 138,
                height: 180,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              Container(
                width: 111,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
              ),
              Positioned(
                bottom: 80,
                child: Image.asset(
                  'assets/images/donut_1.png',
                  width: 80,
                ),
              ),
              Positioned(
                bottom: 70,
                child: Text(
                  'Chocolate Cherry',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Positioned(
                bottom: 40,
                child: Text(
                  '\$22',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class OfferBuilder extends StatelessWidget {
  const OfferBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 325,
      child: ListView(
        padding: const EdgeInsets.only(left: 39),
        scrollDirection: Axis.horizontal,
        children: [
          customCard(
            context,
            cardColor: const Color(0xffD7E4F6),
            top: 30,
            left: 80,
            imagePath: 'assets/images/offer_1.png',
            imageWidth: 150,
            title: 'Strawberry Wheel',
            description:
                'These Baked Strawberry Donuts are filled with fresh strawberries...',
            originalPrice: '\$20',
            discountedPrice: '\$16',
          ),
          customCard(
            context,
            cardColor: AppColors.onOrimaryColor,
            top: 30,
            left: 80,
            imagePath: 'assets/images/offer_2.png',
            imageWidth: 150,
            title: 'Chocolate Glaze',
            description:
                'Moist and fluffy baked chocolate donuts full of chocolate flavor.',
            originalPrice: '\$20',
            discountedPrice: '\$16',
          )
        ],
      ),
    );
  }
}
