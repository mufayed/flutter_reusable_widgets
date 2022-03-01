import 'package:flutter/material.dart';
import 'lib/pages/main_screen.dart';
import 'lib/utill/const.dart';

void main() async{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Const.appName,
      theme: Const.appTheme,
      home: const MainScreen(),
    );
  }
}

