import 'package:demo/controllers/login_controller.dart';
import 'package:demo/controllers/themeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/landing_controller.dart';

const appBarImage =
    'https://st2.depositphotos.com/2287041/6668/v/950/depositphotos_66686799-stock-illustration-vintage-sky-blue-seamless-background.jpg';
const logoImage =
    'https://upload.wikimedia.org/wikipedia/commons/a/ab/Android_O_Preview_Logo.png';
const Color primaryLightColor = Color(0xFFD2EFF8);
const Color secondaryLightColor = Color(0xFFEAF9FE);
const Color textLightColor = Color(0xFF345B6B);
ThemeController themeController = ThemeController.instance;
LoginController loginController = LoginController.instance;
LandingScreenController landingController = LandingScreenController.instance;

initializeControllers() {
  Get.put(ThemeController(), permanent: true);
  Get.put(LoginController(), permanent: true);
  Get.put(LandingScreenController(), permanent: true);
}
