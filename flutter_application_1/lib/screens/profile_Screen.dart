import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Home_Screen.dart';

import '../Summary/Custom_Button.dart';
import '../Summary/defult_TextFrom.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 446,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/photo/plastien.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          DefultText(
            titel: 'Your Name',
            content: 'type your name here',
          ),
          SizedBox(
            height: 40,
          ),
          CustomButton(
            buttonText: 'Save',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
