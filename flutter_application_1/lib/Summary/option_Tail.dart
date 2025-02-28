import 'package:flutter/material.dart';

import '../componant/App_Assets.dart';

class OptionTile extends StatelessWidget {
  const OptionTile({
    super.key,
    required this.icon,
    required this.title,
    required this.trailing,
    this.onTap,
  });
  final VoidCallback? onTap;
  final Widget icon;
  final String title;
  final Widget trailing;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 331,
        height: 70,
        child: Card(
          color: Colors.white,
          child: ListTile(
            leading: icon,
            title: Text(
              title,
              style: TextStyle(
                  fontFamily: AppAssets.font,
                  fontSize: 14,
                  fontWeight: FontWeight.w300),
            ),
            trailing: trailing,
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
