import 'package:flutter/material.dart';

import '../componant/App_Assets.dart';
import '../componant/App_color.dart';
import '../screens/Sitting_Screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final List<Widget>? actions; // ممكن تكون فارغة

  const CustomAppBar({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SittingScreen()),
      ),
      child: AppBar(
        backgroundColor: AppColor.background,
        elevation: 0,
        titleSpacing: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  fontFamily: AppAssets.font),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontFamily: AppAssets.font),
            ),
          ],
        ),
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
