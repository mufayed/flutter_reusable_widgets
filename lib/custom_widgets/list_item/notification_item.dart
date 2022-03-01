import 'package:flutter/material.dart';

class NotificationItem extends StatefulWidget {
  final Map notif;

  const NotificationItem({Key? key, required this.notif}) : super(key: key);

  @override
  _NotificationItemState createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            widget.notif['dp'],
          ),
          radius: 25,
        ),
        contentPadding: const EdgeInsets.all(0),
        title: Text(widget.notif['body']),
        trailing: Text(
          widget.notif['time'],
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 11,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
