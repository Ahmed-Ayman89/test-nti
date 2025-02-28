import 'package:flutter/material.dart';
import 'package:flutter_application_1/componant/App_Assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  bool isNotificationEnabled = false;
  bool isCloudEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: SvgPicture.asset(
          AppAssets.arrowBack,
          width: 21,
          height: 21,
          fit: BoxFit.scaleDown,
        ),
        title: Text("Settings",
            style: TextStyle(
                color: Colors.black,
                fontFamily: AppAssets.font,
                fontSize: 19,
                fontWeight: FontWeight.w300)),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notification",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: AppAssets.font,
                        fontSize: 20,
                        fontWeight: FontWeight.w300)),
                Switch(
                  value: isNotificationEnabled,
                  onChanged: (value) {
                    setState(() {
                      isNotificationEnabled = value;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Enable Cloud",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: AppAssets.font,
                        fontSize: 20,
                        fontWeight: FontWeight.w300)),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCloudEnabled = !isCloudEnabled;
                    });
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: isCloudEnabled ? Colors.green : Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.green, width: 2),
                    ),
                    child: isCloudEnabled
                        ? Icon(Icons.check, color: Colors.white, size: 20)
                        : null,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
