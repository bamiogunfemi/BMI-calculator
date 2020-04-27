import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      body: Column(
          children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: SomeCard(
                      colour:cardBackgroundColor,
               cardChild: IconContent(
                 icon: FontAwesomeIcons.mars,
                 iconText: 'MALE',
               )),
              ),
              Expanded(
                  child: SomeCard(colour:cardBackgroundColor,
                cardChild: IconContent(
             icon: FontAwesomeIcons.venus,
             iconText: 'FEMALE'),
             ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SomeCard(colour:cardBackgroundColor)
        ),
       Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: SomeCard(colour: cardBackgroundColor),
              ),
              Expanded(
                  child: SomeCard(colour:cardBackgroundColor)),
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
         Text(iconText, style: TextStyle(
             fontSize: 18, color:
         Color(0xFF8D8E98)))
       ],
             );
  }
}

class SomeCard extends StatelessWidget {
  SomeCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: colour,
           borderRadius: BorderRadius.circular(10)),
              );
  }
}
