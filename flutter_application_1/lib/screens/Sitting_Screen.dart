import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/profile_Screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Summary/custom_AppBar.dart';
import '../Summary/option_Tail.dart';
import '../componant/App_Assets.dart';
import 'edit_page.dart';
import 'empty_page.dart';

class SittingScreen extends StatefulWidget {
  const SittingScreen({super.key});

  @override
  State<SittingScreen> createState() => _SittingScreenState();
}

class _SittingScreenState extends State<SittingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        imagePath: 'assets/photo/plastien.png',
        title: 'Hello!',
        subtitle: 'Ahmed Ayman',
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EmptyPage()),
              ),
              child: SvgPicture.asset(AppAssets.add),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            OptionTile(
              icon: SvgPicture.asset(AppAssets.profile),
              title: 'Update Profile',
              trailing: SvgPicture.asset(AppAssets.forwardArrow),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
            OptionTile(
              icon: SvgPicture.asset(AppAssets.sitting),
              title: 'Settings',
              trailing: SvgPicture.asset(AppAssets.forwardArrow),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditPage(),
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
