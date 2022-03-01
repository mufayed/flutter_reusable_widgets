import 'dart:math';
import 'package:flutter/material.dart';

import '../custom_widgets/lists/list_users.dart';
class Find extends StatefulWidget {
  const Find({Key? key}) : super(key: key);

  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    List users = List.generate(
        13,
        (index) => {
              "name": "Lorem ipsum",
              "dp": "assets/img${random.nextInt(4)}.jpg",
              "status": "This is a dummy status",
        });

    return Scaffold(body: ListUsers(users: users));
  }
}
