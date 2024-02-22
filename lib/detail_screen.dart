import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:gonuts/constant/color.dart';

class DetailScreen extends StatefulWidget {
  final String image;
  final Color backColor;
  final String name;
  String about =
      "These soft, cake-like Strawberry Frosted Donuts feature fresh strawberries and a delicious fresh strawberry glaze frosting. Pretty enough for company and the perfect treat to satisfy your sweet tooth.";
  final String cost;
  DetailScreen(this.image, this.backColor, this.name, this.about, this.cost,
      {super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.backColor,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 28,
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: widget.backColor,
      bottomSheet: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(80),
          topRight: Radius.circular(80),
        ),
        child: SizedBox(
          height: 500,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 39, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          PhosphorIcons.heart_break_bold,
                          color: AppColors.primaryColor,
                          size: 32,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 33,
                ),
                Text(
                  'About Gonut',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  widget.about,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Quantity',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(PhosphorIcons.minus_bold)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                          child: Text('1',
                              style: Theme.of(context).textTheme.bodySmall)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(PhosphorIcons.plus_bold)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.cost,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(200, 70),
                            backgroundColor: AppColors.primaryColor),
                        onPressed: () {},
                        child: Text(
                          'Add to Cart',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Hero(
              tag: widget.name,
              child: Image.asset(
                widget.image,
                width: 250,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
