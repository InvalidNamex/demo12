import 'package:demo/constants.dart';
import 'package:demo/views/home_screen.dart';
import 'package:demo/views/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'favorites_screen.dart';
import 'library_screen.dart';

class LandingScreen extends StatelessWidget {
  final TextStyle unselectedLabelStyle = const TextStyle(
      color: Color(0xFF5398B1), fontWeight: FontWeight.w500, fontSize: 12);

  final TextStyle selectedLabelStyle = const TextStyle(
      color: Color(0xFF235A6C), fontWeight: FontWeight.bold, fontSize: 12);

  const LandingScreen({Key? key}) : super(key: key);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Container(
            height: 74,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                showUnselectedLabels: true,
                showSelectedLabels: true,
                onTap: landingPageController.changeTabIndex,
                currentIndex: landingPageController.tabIndex.value,
                backgroundColor: secondaryLightColor,
                unselectedItemColor: const Color(0xFF5398B1),
                selectedItemColor: const Color(0xFF235A6C),
                unselectedLabelStyle: unselectedLabelStyle,
                selectedLabelStyle: selectedLabelStyle,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 40.0,
                      color: Color(0xFF305F71),
                    ),
                    label: 'الرئيسية',
                    backgroundColor: secondaryLightColor,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.menu_book,
                      size: 40.0,
                      color: Color(0xFF305F71),
                    ),
                    label: 'المكتبة',
                    backgroundColor: secondaryLightColor,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.bookmark,
                      size: 40.0,
                      color: Color(0xFF305F71),
                    ),
                    label: 'المفضلة',
                    backgroundColor: secondaryLightColor,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                      size: 40.0,
                      color: Color(0xFF305F71),
                    ),
                    label: 'الإعدادات',
                    backgroundColor: secondaryLightColor,
                  ),
                ],
              ),
            ))));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar:
          buildBottomNavigationMenu(context, landingController),
      body: Obx(() => IndexedStack(
            index: landingController.tabIndex.value,
            children: const [
              HomeScreen(),
              LibraryScreen(),
              FavoriteScreen(),
              SettingsScreen(),
            ],
          )),
    ));
  }
}
