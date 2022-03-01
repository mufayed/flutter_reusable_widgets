import 'package:flutter/material.dart';

class PostItem extends StatefulWidget {
  final String dp;
  final String name;
  final String time;
  final String img;


    const PostItem({Key? key,
    required this.dp,
    required this.name,
    required this.time,
    required this.img}) : super(key: key);

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                widget.dp,
              ),
            ),
            contentPadding: const EdgeInsets.all(0),
            title: Text(
              widget.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(
                Icons.keyboard_arrow_down
            ),
          ),
          Image.asset(
            widget.img,
            height: 300,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
