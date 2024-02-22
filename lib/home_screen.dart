import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:gonuts/constant/color.dart';
import 'package:gonuts/widget/donut_card.dart';
import 'package:gonuts/widget/search_widget.dart';

import 'widget/custom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 20,
          ),
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
          SizedBox(
            height: 180,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              prototypeItem: createDonutCard(
                context,
                'Donuts',
                'assets/images/donut_1.png',
                'Chocolate Cherry',
                '\$22',
              ),
              children: [
                createDonutCard(
                  context,
                  'Donuts',
                  'assets/images/donut_1.png',
                  'Chocolate Cherry',
                  '\$22',
                ),
                createDonutCard(
                  context,
                  'Donuts',
                  'assets/images/donut_2.png',
                  'Chocolate Cherry',
                  '\$22',
                ),
                createDonutCard(
                  context,
                  'Donuts',
                  'assets/images/donut_3.png',
                  'Chocolate Cherry',
                  '\$22',
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: DotNavigationBar(
        //margin: EdgeInsets.only(left: 10, right: 10),
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        dotIndicatorColor: Colors.white,

        itemPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        enablePaddingAnimation: true,
        unselectedItemColor: Colors.grey[300],
        splashBorderRadius: 60,
        enableFloatingNavBar: false,
        onTap: _handleIndexChanged,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: const Icon(
              PhosphorIcons.house_fill,
              size: 32,
            ),
            selectedColor: AppColors.primaryColor,
            unselectedColor: AppColors.onOrimaryColor,
          ),

          /// Likes
          DotNavigationBarItem(
            icon: const Icon(
              PhosphorIcons.heart_fill,
              size: 32,
            ),
            selectedColor: AppColors.primaryColor,
            unselectedColor: AppColors.onOrimaryColor,
          ),

          /// Search
          DotNavigationBarItem(
            icon: const Icon(
              PhosphorIcons.bell_ringing_fill,
              size: 32,
            ),
            selectedColor: AppColors.primaryColor,
            unselectedColor: AppColors.onOrimaryColor,
          ),
          DotNavigationBarItem(
            icon: const Icon(
              PhosphorIcons.storefront_fill,
              size: 32,
            ),
            selectedColor: AppColors.primaryColor,
            unselectedColor: AppColors.onOrimaryColor,
          ),

          /// Profile
          DotNavigationBarItem(
            icon: const Icon(
              PhosphorIcons.user_fill,
              size: 32,
            ),
            selectedColor: AppColors.primaryColor,
            unselectedColor: AppColors.onOrimaryColor,
          ),
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
      height: 350,
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

enum _SelectedTab { home, favorite, bell, store, person }
