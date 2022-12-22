import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:wheather_app/constants/images.dart';
import 'package:wheather_app/widget/my_card.dart';
import '../controller/home_controller.dart';
import '../../../widget/my_list.dart';
import '../../../widget/my_chart.dart';

class HomeScreen extends GetView<HomeController> {
  static String routeName = "/homeScreen";
  const HomeScreen({super.key});
  String get() {
    return routeName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(builder: (controller) {
        return SafeArea(
            child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(Colors.black38, BlendMode.darken),
                  image: AssetImage(
                    'assets/images/cloud-in-blue-sky.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2.15,
                    left: 15,
                    right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'other city'.toUpperCase(),
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 16,
                            fontFamily: 'flutterfonts',
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const MyList(),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'forcast next 5 days'.toUpperCase(),
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45,
                                    ),
                          ),
                          const Icon(
                            Icons.next_plan_outlined,
                            color: Colors.black45,
                          ),
                        ],
                      ),
                    ),
                    const MyChart(),
                  ],
                ),
              ),
            ),
            const MyCard()
          ],
        ));
      }),
    );
  }
}
