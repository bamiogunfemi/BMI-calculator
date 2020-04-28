import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'customCard.dart';

const bottomContainerHeight =80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const buttonColor = Color(0xFFEB1555);

enum Gender { female , male}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {
  Gender selectedGender ;

   gesture (selectedgender){
    GestureDetector(
        onTap: (){
      setState(() {
        selectedGender = selectedgender;                   });
    });
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
                  child: CustomCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                      colour: selectedGender== Gender.male ? activeCardColor : inactiveCardColor,
               cardChild: IconContent(
                 icon: FontAwesomeIcons.mars,
                 iconText: 'MALE',
               )
                  ),
              ),
              Expanded(
                  child:CustomCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                cardChild: IconContent(
             icon: FontAwesomeIcons.venus,
             iconText: 'FEMALE'),
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

