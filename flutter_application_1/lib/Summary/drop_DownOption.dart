import 'package:flutter/material.dart';
import 'package:flutter_application_1/componant/App_Assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropdownOption extends StatefulWidget {
  final Function(String) onSelected;

  const DropdownOption({super.key, required this.onSelected});

  @override
  _DropdownOptionState createState() => _DropdownOptionState();
}

class _DropdownOptionState extends State<DropdownOption> {
  String? selectedGroup;

  final List<Map<String, dynamic>> taskGroups = [
    {
      'name': 'Home',
      'icon': 'assets/Icon/Home.svg',
      'color': Colors.pink.shade100
    },
    {
      'name': 'Work',
      'icon': 'assets/Icon/Vector (1).svg',
      'color': Colors.black
    },
    {
      'name': 'Personal',
      'icon': 'assets/Icon/person.svg',
      'color': Colors.green.shade100
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 63,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedGroup,
          hint: Text(
            "Select task group",
            style: TextStyle(
              fontSize: 14,
              fontFamily: AppAssets.font,
              fontWeight: FontWeight.w200,
            ),
          ),
          icon: SvgPicture.asset(AppAssets.downArrow),
          onChanged: (String? newValue) {
            setState(() {
              selectedGroup = newValue;
            });
            widget.onSelected(newValue!);
          },
          items: taskGroups.map((group) {
            return DropdownMenuItem<String>(
              value: group['name'],
              child: Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        color: group['color'],
                        borderRadius: BorderRadius.circular(5)),
                    padding: EdgeInsets.all(8),
                    child:
                        SvgPicture.asset(group['icon']!, width: 20, height: 20),
                  ),
                  SizedBox(width: 10),
                  Text(group['name']!, style: TextStyle(fontSize: 16)),
                ],
              ),
            );
          }).toList(),
          dropdownColor: Colors.white,
          borderRadius: BorderRadius.circular(12),
          menuMaxHeight: 200,
        ),
      ),
    );
  }
}
