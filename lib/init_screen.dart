import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gonuts/constant/color.dart';
import 'package:gonuts/home_screen.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({super.key});

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Column(
        children: [
          Expanded(
            child: Pulse(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    color: AppColors.scaffoldColor,
                    //height: MediaQuery.of(context).size.height / 2,
                  ),
                  Positioned(
                    top: 0,
                    // right: 10,
                    bottom: 50,
                    child: Image.asset(
                      'assets/images/gonut_5.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 30,
                    child: Image.asset(
                      'assets/images/gonut_1.png',
                      width: 120,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Image.asset(
                      'assets/images/gonut_3.png',
                      width: 120,
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 0,
                    child: Image.asset(
                      'assets/images/gonut_4.png',
                      width: 120,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FadeInLeft(
                    from: 50,
                    child: Text(
                      'Gonuts with Donuts',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  FadeInLeft(
                    from: 250,
                    child: Text(
                      'Gonuts with Donuts is a Sri Lanka dedicated food outlets for specialize manufacturing of Donuts in Colombo, Sri Lanka.',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  FadeInUp(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomeScreen();
                            },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize:
                              Size(MediaQuery.of(context).size.width, 65)),
                      child: Text(
                        'Get Started',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
