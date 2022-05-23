import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class CustomLoginButton extends StatelessWidget {
  final Widget onPressed;
  final String? image;
  final String? text;
  final Color color;
  const CustomLoginButton(
      {required this.text,
      required this.image,
      required this.onPressed,
      required this.color});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => onPressed);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.65,
        height: 40,
        color: color,
        child: Row(
          children: [
            SizedBox(
              width: 60,
              child: Image.asset(
                image!,
                height: 40,
                width: 40,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text!,
                  style: const TextStyle(
                      color: secondaryLightColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
