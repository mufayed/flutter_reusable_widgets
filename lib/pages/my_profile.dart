import 'package:flutter/material.dart';
import '../custom_widgets/lists/profile_images_list.dart';
import '../custom_widgets/views/profile_numbers_view.dart';
import '../utill/const.dart';

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
              Text('Lorem Ipsum', style: Const.titleTextStyle),
              const SizedBox(height: 3),
              const Text(
                "Bio",
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ProfileNumbersView(
                      title: 'Posts',
                      number: '521',
                      onPressed: () {
                        // do whatever you want
                      },
                    ),
                    ProfileNumbersView(
                      title: 'Followers',
                      number: '200',
                      onPressed: () {
                        // do whatever you want
                      },
                    ),
                    ProfileNumbersView(
                      title: 'Following',
                      number: '521',
                      onPressed: () {
                        // do whatever you want
                      },
                    ),
                  ],
                ),
              ),
              const ProfileImagesList()
            ],
          ),
        ),
      ),
    );
  }
}
