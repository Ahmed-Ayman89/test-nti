import 'package:flutter/material.dart';
import 'package:flutter_application_1/Summary/Custom_Button.dart';
import 'package:flutter_application_1/Summary/defult_TextFrom.dart';
import 'package:flutter_application_1/componant/App_Assets.dart';
import 'package:flutter_application_1/screens/Home_Screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Summary/drop_DownOption.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset(
            AppAssets.arrowBack,
            width: 14,
            height: 8,
            fit: BoxFit.scaleDown,
          ),
        ),
        title: Text(
          'Add Task',
          style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w300,
              fontFamily: AppAssets.font),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            DropdownOption(
              onSelected: (String) {},
            ),
            SizedBox(
              height: 25,
            ),
            DefultText(titel: 'Task Name', content: 'Enter task name'),
            SizedBox(
              height: 25,
            ),
            DefultText(
                titel: ' Description',
                content: 'Enter task description . . . '),
            SizedBox(
              height: 25,
            ),
            CustomButton(
                buttonText: 'Save',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                })
          ],
        ),
      ),
    );
  }
}
