import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'customCard.dart';

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
      body: Column(
          children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: CustomCard(
                      colour:cardBackgroundColor,
               cardChild: IconContent(
                 icon: FontAwesomeIcons.mars,
                 iconText: 'MALE',
               )),
              ),
              Expanded(
                  child: CustomCard(colour:cardBackgroundColor,
                cardChild: IconContent(
             icon: FontAwesomeIcons.venus,
             iconText: 'FEMALE'),
             ),
              ),
            ],
          ),
        ),
        Expanded(
          child: CustomCard(colour:cardBackgroundColor)
        ),
       Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: CustomCard(colour: cardBackgroundColor),
              ),
              Expanded(
                  child: CustomCard(colour:cardBackgroundColor)),
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

