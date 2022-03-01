import 'dart:math';
import 'package:flutter/material.dart';

import '../custom_widgets/lists/list_notifications.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    // Generate notifications
    List notifications = List.generate(
        20,
        (index) => {
              "name": "Lorem Ipsum",
              "dp": "assets/img${random.nextInt(4)}.jpg",
              "time": "10 min ago",
              "body": "Neque porro quisquam est qui dolorem ipsum"
            });

    return Scaffold(
      body: ListNotifications(notifications: notifications,)
    );
  }
}
