import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/profile_Screen.dart';

import '../Summary/Custom_Button.dart';
import '../componant/App_Assets.dart';
import 'empty_page.dart';

class LetStart extends StatelessWidget {
  const LetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/photo/OBJECTS012.png',
              width: 301.7,
              height: 342.86,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Welcome To\nDo It !',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppAssets.font,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Ready to conquer your tasks? Let's Do\n It together.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppAssets.font,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton(
              buttonText: 'Let’s Start',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
