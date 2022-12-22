import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:wheather_app/controller/home_controller.dart';
import '../constants/images.dart';

class MyCard extends GetView<HomeController> {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      left: 15,
      width: MediaQuery.of(context).size.width - 30,
      child: Column(
        children: [
          TextField(
            onChanged: (value) => controller.city = value,
            style: const TextStyle(
              color: Colors.white,
            ),
            textInputAction: TextInputAction.search,
            onSubmitted: (value) => controller.updateWeather(),
            decoration: InputDecoration(
              suffix: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintStyle: const TextStyle(color: Colors.white),
              hintText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          Center(
                            child: Text(
                              '${controller.currentWeatherData.name}'
                                  .toUpperCase(),
                              style:
                                  Theme.of(context).textTheme.caption!.copyWith(
                                        color: Colors.black45,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'flutterfonts',
                                      ),
                            ),
                          ),
                          Text(
                            DateFormat().add_MMMMEEEEd().format(DateTime.now()),
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: Colors.black45,
                                      fontSize: 16,
                                      fontFamily: 'flutterfonts',
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                   '${controller.currentWeatherData.weather![0].description}',
                                  style: const TextStyle(
                                    fontFamily: 'flutterfonts',
                                    color: Colors.black45,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                 
                                      '${(controller.currentWeatherData.main!.temp! - 273.15).round().toString()}\u2103',
                                    
                                  style: const TextStyle(
                                      fontFamily: 'flutterfonts',
                                      color: Colors.black54,
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'min: ${(controller.currentWeatherData.main!.tempMin! - 273.15).round().toString()}\u2103 / max: ${(controller.currentWeatherData.main!.tempMax! - 273.15).round().toString()}\u2103'
                                     ,
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                        color: Colors.black45,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'flutterfonts',
                                      ),
                                ),
                                const SizedBox(
                                  height: 15,
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                LottieBuilder.asset(
                                  Images.cloudyAnim,
                                  width: 120,
                                  height: 70,
                                ),
                                Text('wind ${controller.currentWeatherData.wind!.speed} m/s'
                                      ,
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                        color: Colors.black45,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'flutterfonts',
                                      ),
                                ),
                                const SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
