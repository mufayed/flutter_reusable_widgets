
import 'package:flutter/material.dart';

import '../custom_widgets/lists/profile_images_list.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 30),
              const CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/img5.jpg",
                ),
                radius: 50,
              ),
              const SizedBox(height: 10),
              const Text(
                'Lorem Ipsum',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 3),
              const Text(
                "Bio",
                style: TextStyle(),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Text(
                          "20",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Posts",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Text(
                          "248",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Followers",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Text(
                          "508",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Following",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const ProfileImagesList()
            ],
          ),
        ),
      ),
    );
  }
}
