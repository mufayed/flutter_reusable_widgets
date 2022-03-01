import 'package:flutter/material.dart';

import '../list_item/post_item.dart';

class ListPosts extends StatefulWidget {
  final List posts;

  const ListPosts({Key? key, required this.posts}) : super(key: key);


  @override
  _ListPostsState createState() => _ListPostsState();
}

class _ListPostsState extends State<ListPosts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: widget.posts.length,
        itemBuilder: (BuildContext context, int index) {
          Map post = widget.posts[index];
          return PostItem(
            img: post['img'],
            name: post['name'],
            dp: post['dp'],
            time: post['time'],
          );
        },
      ),
    );
  }
}
