import 'package:get/get.dart';

class LandingScreenController extends GetxController {
  static LandingScreenController instance = Get.find();
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
