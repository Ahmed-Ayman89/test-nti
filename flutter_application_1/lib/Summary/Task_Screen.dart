import 'package:flutter/material.dart';

import '../componant/App_Assets.dart';

class TaskContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color colorContainer;
  final Widget icon;
  final Color textColor;

  const TaskContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.colorContainer,
    required this.icon,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 234,
      height: 100,
      decoration: BoxDecoration(
        color: colorContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppAssets.font),
              ),
              SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  color: textColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  fontFamily: AppAssets.font,
                ),
              ),
            ],
          ),
          icon,
        ],
      ),
    );
  }
}
