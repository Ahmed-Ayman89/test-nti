import 'package:flutter/material.dart';
import 'package:flutter_application_1/componant/App_color.dart';

import '../componant/App_Assets.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const CustomButton(
      {super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: AppColor.backgroundButton.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 4)),
      ]),
      width: 331,
      height: 48.01,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.backgroundButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: AppColor.colorText,
            fontFamily: AppAssets.font,
            fontSize: 19,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
