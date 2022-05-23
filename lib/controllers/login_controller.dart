import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController instance = Get.find();
  final formKey = GlobalKey<FormState>();
  TextEditingController loginUserName =
      TextEditingController(text: 'اسم المستخدم');
  TextEditingController loginPassword =
      TextEditingController(text: 'كلمة المرور');
}
