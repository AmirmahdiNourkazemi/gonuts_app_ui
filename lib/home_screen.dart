import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
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

        itemPadding: EdgeInsets.symmetric(horizontal: 30),
        enablePaddingAnimation: true,
        unselectedItemColor: Colors.grey[300],
        splashBorderRadius: 60,
        enableFloatingNavBar: false,
        onTap: _handleIndexChanged,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: Icon(Icons.home),
            selectedColor: AppColors.primaryColor,
          ),

          /// Likes
          DotNavigationBarItem(
            icon: Icon(Icons.favorite),
            selectedColor: AppColors.primaryColor,
          ),

          /// Search
          DotNavigationBarItem(
            icon: Icon(Icons.search),
            selectedColor: AppColors.primaryColor,
          ),

          /// Profile
          DotNavigationBarItem(
            icon: Icon(Icons.person),
            selectedColor: AppColors.primaryColor,
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

enum _SelectedTab { home, favorite, search, person }
