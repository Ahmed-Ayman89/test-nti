import 'package:flutter/material.dart';

import 'package:flutter_application_1/Summary/custom_AppBar.dart';
import 'package:flutter_application_1/componant/App_Assets.dart';
import 'package:flutter_application_1/componant/App_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Summary/Task_Screen.dart';
import '../Summary/option_Tail.dart';
import 'Add_Task.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                MaterialPageRoute(builder: (context) => AddTask()),
              ),
              child: SvgPicture.asset(AppAssets.add),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 335,
              decoration: BoxDecoration(
                color: AppColor.backgroundButton,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your today’s tasks\nalmost done!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: AppColor.colorText,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppAssets.font),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '80%',
                          style: TextStyle(
                              color: AppColor.colorText,
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              fontFamily: AppAssets.font),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(121, 36),
                              backgroundColor: AppColor.colorText,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              )),
                          onPressed: () {},
                          child: Text(
                            'View Tasks',
                            style: TextStyle(
                                color: AppColor.backgroundButton,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: AppAssets.font),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    'In Progress',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontFamily: AppAssets.font),
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFceefde),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "5",
                    style: TextStyle(color: Colors.green),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  TaskContainer(
                    title: 'Work Task',
                    subtitle: 'Add New Features',
                    icon: SvgPicture.asset(
                      'assets/Icon/work.svg',
                      width: 12,
                      height: 12,
                    ),
                    textColor: AppColor.colorText,
                    colorContainer: AppColor.colorText2,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TaskContainer(
                    title: 'Personal Task',
                    subtitle: 'Improve my English skills\n by trying to speek',
                    icon: SvgPicture.asset(AppAssets.home),
                    textColor: AppColor.colorText2,
                    colorContainer: Color(0xFFCEEBDC),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TaskContainer(
                    title: 'Work Task',
                    subtitle: 'Add new feature for Do It\n app and commit it',
                    icon: SvgPicture.asset(AppAssets.person),
                    textColor: AppColor.colorText2,
                    colorContainer: Color(0xFFFFE4F2),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            OptionTile(
              title: 'Personal Task',
              icon: SvgPicture.asset(AppAssets.person),
              trailing: Text('5'),
            ),
            SizedBox(
              height: 15,
            ),
            OptionTile(
              title: 'Home Task',
              icon: SvgPicture.asset(AppAssets.home),
              trailing: Text('3'),
            ),
            SizedBox(
              height: 15,
            ),
            OptionTile(
              title: 'Work Task',
              icon: Container(
                width: 19,
                height: 21,
                decoration: BoxDecoration(color: AppColor.colorText2),
                child: SvgPicture.asset(AppAssets.work),
              ),
              trailing: Text('1'),
            ),
          ],
        ),
      ),
    );
  }
}
