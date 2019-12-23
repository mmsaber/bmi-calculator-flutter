import 'package:flutter/material.dart';

class CustomColumnWidget extends StatelessWidget {
  final IconData iconData;
  final String gender;

  CustomColumnWidget({@required this.iconData, @required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}