import 'package:flutter/material.dart';
const iconTextStyle =TextStyle(
    fontSize: 18, color:
Color(0xFF8D8E98));
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
        Text(iconText, style:iconTextStyle )
      ],
    );
  }
}