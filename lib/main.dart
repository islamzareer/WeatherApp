import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wheather_app/screens/home_screen.dart';
import 'package:wheather_app/screens/splash_screen.dart';
import 'package:wheather_app/utils/Binding/home_binding.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      getPages: [
        GetPage(
          name: HomeScreen.routeName,
          page: () => const HomeScreen(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: SplashScreen.routeName,
          page: () => const SplashScreen(),
          binding: HomeBinding(),
        ),
      ],
    );
  }
}
