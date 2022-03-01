import 'package:flutter/material.dart';
import 'dart:math';

import '../custom_widgets/lists/list_posts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    //Generate posts
    List posts = List.generate(
        50,
        (index) => {
              "name": "Lorem Ipsum",
              "dp": "assets/img${random.nextInt(4)}.jpg",
              "time": "1 min ago",
              "img": "assets/land${random.nextInt(5)}.jpg"
            });

    return Scaffold(
      body: ListPosts(posts: posts,)
    );
  }
}
