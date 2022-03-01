import 'package:flutter/material.dart';


class UserItem extends StatefulWidget {
  final Map user;

  const UserItem({Key? key, required this.user}) : super(key: key);

  @override
  _UserItemState createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              widget.user['dp'],
            ),
            radius: 25,
          ),
          title: Text(widget.user['name']),
          subtitle: Text(widget.user['status']),
          trailing: TextButton(
            child: const Text(
              "Follow",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
