import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'customCard.dart';

const bottomContainerHeight =80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const buttonColor = Color(0xFFEB1555);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 
 Color maleCardColor = inactiveCardColor;
 Color femaleCardColor = inactiveCardColor;
 //1 =male, 2= female
 void updateColor(int gender){
   //male card pressed

   if(gender == 1){
    if (maleCardColor == inactiveCardColor){
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;

    }else{
      maleCardColor = inactiveCardColor;
    }
  }if(gender ==2){
     if (femaleCardColor == inactiveCardColor){
       femaleCardColor = activeCardColor;
       maleCardColor = inactiveCardColor;
     }else{
       femaleCardColor = inactiveCardColor;
     }
   }
 }
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
                  child: GestureDetector(
                    onTap: (){
                     setState(() {
                      updateColor(1);
                   });
                     },
                    child: CustomCard(
                        colour:maleCardColor,
               cardChild: IconContent(
                 icon: FontAwesomeIcons.mars,
                 iconText: 'MALE',
               )),
                  ),
              ),
              Expanded(
                  child:GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: CustomCard(colour:femaleCardColor,
                cardChild: IconContent(
             icon: FontAwesomeIcons.venus,
             iconText: 'FEMALE'),
             ),
                  ),
              ),
            ],
          ),
        ),
        Expanded(
          child: CustomCard(colour:activeCardColor)
        ),
       Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: CustomCard(colour: activeCardColor),
              ),
              Expanded(
                  child: CustomCard(colour:activeCardColor)),
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

