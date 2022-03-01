import 'package:flutter/material.dart';
import 'package:flutter_reusable_widgets/lib/pages/main_screen.dart';
import 'package:flutter_reusable_widgets/lib/utill/const.dart';

void main() async{
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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

