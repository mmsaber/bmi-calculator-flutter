import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  final Function onPressed;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      elevation: 6,
      fillColor: Colors.white,
      constraints: BoxConstraints.tightFor(height: 57, width: 57),
      child: icon,
    );
  }

  CustomFAB({@required this.icon, @required this.onPressed});
}