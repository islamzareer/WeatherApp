import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wheather_app/controller/home_controller.dart';
import 'package:wheather_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late bool isInitialized = false;

  @override
  Widget build(BuildContext context) {
    final HomeController mainController =
        Get.put(HomeController(city: 'hebron'));
    isInitialized = mainController.initialized;

    return Scaffold(
      body: GetBuilder<HomeController>(
          init: HomeController(city: 'hebron'),
          builder: (controller) {
            return SafeArea(
              child: InkWell(
                onTap: () {
                  isInitialized ? Get.to(const HomeScreen()) : null;
                },
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/splash.jpg',
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
