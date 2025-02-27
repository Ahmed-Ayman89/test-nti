import 'package:flutter/material.dart';

import 'componant/App_color.dart';
import 'screens/let_Start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.background,
        appBarTheme: AppBarTheme(backgroundColor: AppColor.background),
      ),
      debugShowCheckedModeBanner: false,
      home: LetStart(),
    );
  }
}
