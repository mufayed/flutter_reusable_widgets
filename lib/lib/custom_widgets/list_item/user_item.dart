import 'package:flutter/material.dart';

import '../../utill/const.dart';
class UserItem extends StatefulWidget {
  final Map user;


    const UserItem({Key? key,
    required this.user}) : super(key: key);

  @override
  _UserItemState createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            widget.user['dp'],
          ),
          radius: 25,
        ),
        title: Text(widget.user['name']),
        subtitle: Text(widget.user['status']),
        trailing: widget.user['Followed']
            ? FlatButton(
          child: const Text(
            "Unfollow",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.grey,
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(color: Colors.grey)),
        )
            :
        FlatButton(
          child: const Text(
            "Follow",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Const.lightAccent,
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side:
              BorderSide(color: Const.lightAccent,)),
        ),
      ),
    );
  }
}
