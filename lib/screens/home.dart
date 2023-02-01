import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:osar_pasar/controller/home_controller.dart';
import 'package:osar_pasar/screens/service_providers.dart';

import '../widgets/drawer.dart';
import '../widgets/home_card.dart';
import 'address.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final c = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xff00183F),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shadowColor: const Color(0xff00183F),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                "Goodmorning, User",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff00183F),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeCard(
                  text: "Home Move",
                  iconData: Icons.home_filled,
                  onTap: (() => Get.to(() => ServiceProviderScreen())),
                ),
                // iconData: Icons.home_filled,
                //iconData: FontAwesomeIcons.houseChimney,
                HomeCard(
                  text: "Office Move",
                  iconData: Icons.label_important_rounded,
                  onTap: (() => Get.to(() => AddressPage())),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Material(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFC533),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    splashColor: Colors.grey.withOpacity(0.1),
                    child: Container(
                      height: 140,
                      width: 350,
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 10.0,
                          children: const [
                            Text(
                              "Enjoy 10% off as a first mover",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              // Icons.directions_car_filled,
                              // Icons.delivery_dining,
                              FontAwesomeIcons.percent,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff00183F),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    splashColor: Colors.grey.withOpacity(0.1),
                    child: Container(
                      height: 104,
                      width: 163,
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 10.0,
                          children: const [
                            Icon(
                              Icons.history,
                              color: Colors.white,
                            ),
                            Text(
                              "History",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff00183F),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    splashColor: Colors.grey.withOpacity(0.1),
                    child: Container(
                      height: 104,
                      width: 163,
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 10.0,
                          children: const [
                            Icon(
                              FontAwesomeIcons.receipt,
                              color: Colors.white,
                            ),
                            Text(
                              "Active Bookings",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Material(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFC533),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    splashColor: Colors.grey.withOpacity(0.1),
                    child: Container(
                      height: 140,
                      width: 350,
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 10.0,
                          children: const [
                            Text(
                              "Scratch Less Shifting",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              FontAwesomeIcons.peopleCarryBox,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
