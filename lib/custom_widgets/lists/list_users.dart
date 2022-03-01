import 'package:flutter/material.dart';

import '../list_item/user_item.dart';
class ListUsers extends StatefulWidget {
  final List users;

  const ListUsers({Key? key, required this.users}) : super(key: key);


  @override
  _ListUsersState createState() => _ListUsersState();
}

class _ListUsersState extends State<ListUsers> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ListView.separated(
        padding: const EdgeInsets.all(5),
        separatorBuilder: (BuildContext context, int index) {
          return Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 0.5,
              width: MediaQuery.of(context).size.width,
              child: const Divider(),
            ),
          );
        },
        itemCount: widget.users.length,
        itemBuilder: (BuildContext context, int index) {
          Map user = widget.users[index];
          return UserItem(user: user);
        },
      ),
    );
  }
}
