import 'package:flutter/material.dart';
import 'constants.dart';
class IconContent extends StatelessWidget {
  IconContent({this.icon, this.iconText});
  final IconData icon;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,
          size: 80.0,)
        ,
        SizedBox(
          height: 15,
        ),
        Text(iconText, style:kLabelTextStyle )
      ],
    );
  }
}