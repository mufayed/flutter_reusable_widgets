import 'package:flutter/material.dart';
import '../list_item/notification_item.dart';

class ListNotifications extends StatefulWidget {
  final List notifications;

  const ListNotifications({Key? key, required this.notifications}) : super(key: key);


  @override
  _ListNotificationsState createState() => _ListNotificationsState();
}

class _ListNotificationsState extends State<ListNotifications> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ListView.separated(
        padding: const EdgeInsets.all(10),
        separatorBuilder: (BuildContext context, int index) {
          return Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 0.5,
              width: MediaQuery.of(context).size.width / 1.5,
              child: const Divider(),
            ),
          );
        },
        itemCount: widget.notifications.length,
        itemBuilder: (BuildContext context, int index) {
          return NotificationItem(notif: widget.notifications[index]);
        },
      ),
    );
  }
}
