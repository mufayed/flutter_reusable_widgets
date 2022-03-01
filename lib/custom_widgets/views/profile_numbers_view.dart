import 'package:flutter/material.dart';
import 'package:flutter_reusable_widgets/utill/const.dart';

class ProfileNumbersView extends StatefulWidget {
  final String title;
  final String number;
  final VoidCallback? onPressed;

  const ProfileNumbersView(
      {Key? key, required this.title, required this.number, this.onPressed})
      : super(key: key);

  @override
  _ProfileNumbersViewState createState() => _ProfileNumbersViewState();
}

class _ProfileNumbersViewState extends State<ProfileNumbersView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.onPressed;
      },
      child: Column(
        children: <Widget>[
          Text(
            widget.number,
            style: Const.titleTextStyle
          ),
          const SizedBox(height: 4),
           Text(
             widget.title,
          ),
        ],
      ),
    );
  }
}
