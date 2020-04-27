import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight =80.0;
const cardBackgroundColor = Color(0xFF1D1E33);
const buttonColor = Color(0xFFEB1555);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Card(cardBackgroundColor)),
              Expanded(
                  child: Card(cardBackgroundColor)),
            ],
          ),
        ),
        Expanded(
          child: Card(cardBackgroundColor)
        ),
       Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Card(cardBackgroundColor),
              ),
              Expanded(
                  child: Card(cardBackgroundColor)),
            ],
          ),
        ),
        Container(
          color: buttonColor,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: bottomContainerHeight,
        ),
      ]),
    );
  }
}

class Card extends StatelessWidget {
  Card(this.colour);
final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
           color: colour,
      borderRadius: BorderRadius.circular(10)),
              );
  }
}
