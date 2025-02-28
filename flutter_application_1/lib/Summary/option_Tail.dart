import 'package:flutter/material.dart';

import '../componant/App_Assets.dart';

class OptionTile extends StatelessWidget {
  const OptionTile({
    super.key,
    required this.icon,
    required this.title,
    required this.trailing,
    required this.onTap,
  });

  final Widget icon;
  final String title;
  final Widget trailing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 331,
        height: 63,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 1,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ListTile(
          leading: icon,
          title: Text(
            title,
            style: TextStyle(
              fontFamily: AppAssets.font,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          trailing: trailing,
        ),
      ),
    );
  }
}
