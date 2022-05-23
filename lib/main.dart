import 'package:demo/constants.dart';
import 'package:demo/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await initializeControllers();
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar', 'EG'),
      theme: themeController.light,
      darkTheme: themeController.dark,
      themeMode: themeController.theme,
      home: const HomeScreen()));
}
