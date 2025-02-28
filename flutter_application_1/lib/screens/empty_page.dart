import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Add_Task.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Summary/custom_AppBar.dart';
import '../componant/App_Assets.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

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
                MaterialPageRoute(
                  builder: (context) => AddTask(),
                ),
              ),
              child: SvgPicture.asset(AppAssets.add),
            ),
          ),
        ],
      ),
      body: Center(
        child: Image.asset('assets/photo/empty.png'),
      ),
    );
  }
}
