import 'package:demo/constants.dart';
import 'package:demo/views/sample_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_login_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        child: ListView(
          children: [
            IconButton(
                onPressed: themeController.switchTheme,
                icon: const Icon(Icons.wb_sunny_outlined))
          ],
        ),
      ),
      appBar: AppBar(
        flexibleSpace: Image.network(
          appBarImage,
          fit: BoxFit.cover,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 15,
              child: Image.network(logoImage),
            ),
          ),
        ],
        backgroundColor: Colors.lightBlueAccent,
        title: const Text(
          'لنحيا بالقرآن',
          style: TextStyle(color: textLightColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.08,
            vertical: MediaQuery.of(context).size.height * 0.03),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: loginController.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'تخطي',
                      style: TextStyle(
                          color: textLightColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                      color: textLightColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const CustomLoginButton(
                  color: Colors.blueAccent,
                  image: 'assets/images/fb_logo.png',
                  text: 'تسجيل الدخول عبر فيسبوك',
                  onPressed: SampleScreen(),
                ),
                const CustomLoginButton(
                  color: Colors.lightBlueAccent,
                  image: 'assets/images/twitter_logo.png',
                  text: 'تسجيل الدخول عبر تويتر',
                  onPressed: SampleScreen(),
                ),
                const CustomLoginButton(
                  color: Colors.red,
                  image: 'assets/images/google_logo.png',
                  text: 'تسجيل الدخول عبر جوجل',
                  onPressed: SampleScreen(),
                ),
                const Divider(
                  height: 4.0,
                  color: Colors.blueGrey,
                ),
                const Text(
                  'أو',
                  style: TextStyle(
                      color: textLightColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                // Login Username field
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          color: Colors.grey.shade300,
                          child: const Icon(
                            Icons.person_outline,
                            color: textLightColor,
                          ),
                        ),
                        Expanded(
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: TextFormField(
                                  style:
                                      const TextStyle(color: Color(0xFF2D5E70)),
                                  controller: loginController.loginUserName,
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        (value.length < 7)) {
                                      return 'رجاء ادخال الاسم كامل';
                                    }
                                    return null;
                                  },
                                )))
                      ],
                    )),
                // Login Password field
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          color: Colors.grey.shade300,
                          child: const Icon(
                            Icons.lock,
                            color: textLightColor,
                          ),
                        ),
                        Expanded(
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: TextFormField(
                                  style:
                                      const TextStyle(color: Color(0xFF2D5E70)),
                                  controller: loginController.loginPassword,
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        (value.length < 8)) {
                                      return 'كلمة المرور يجب أن تكون 8 ارقام على الأقل';
                                    }
                                    return null;
                                  },
                                )))
                      ],
                    )),
                FlatButton(
                    height: 50,
                    minWidth: MediaQuery.of(context).size.width,
                    color: const Color(0xFF2D5E70),
                    onPressed: () {
                      Get.to(() => const SampleScreen());
                    },
                    child: const Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          color: secondaryLightColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: const Text(
                        'ليس لديك حساب؟',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D5E70),
                            fontSize: 16),
                      ),
                    ),
                    GestureDetector(
                      child: const Text(
                        'سجل الآن !',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5398B1),
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
