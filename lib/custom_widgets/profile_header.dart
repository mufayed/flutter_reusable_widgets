import 'package:flutter/material.dart';
import 'dart:math';

class ProfileImagesList extends StatefulWidget {
  const ProfileImagesList({Key? key}) : super(key: key);
  @override
  _ProfileImagesListState createState() => _ProfileImagesListState();
}

class _ProfileImagesListState extends State<ProfileImagesList> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      padding: const EdgeInsets.all(5),
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 200 / 200,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            "assets/land${random.nextInt(5)}.jpg",
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
