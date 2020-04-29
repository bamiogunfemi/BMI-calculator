import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'customCard.dart';
import 'constants.dart';


enum Gender { female , male}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {
  Gender selectedGender ;
 int height =180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      colour: selectedGender== Gender.male ? kActiveCardColor : kInactiveCardColor,
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
                    colour: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                cardChild: IconContent(
             icon: FontAwesomeIcons.venus,
             iconText: 'FEMALE'),
             ),
              ),
            ],
          ),
        ),
        Expanded(
          child: CustomCard(colour:kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('HEIGHT', style: kLabelTextStyle),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(height.toString(), style: kNumberTextStyle),
                    Text('cm', style: kLabelTextStyle)
                    ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.white,
                  thumbColor:kButtonColor,
                    inactiveTrackColor:  kInactiveColor ,
                    overlayColor: kOverlayColor,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30)
                ),
                child: Slider(
                  value: height.toDouble(),
                  min:120,
                  max: 250,
                  onChanged :(double newValue){
                    setState(() {
                      height= newValue.round();
                  });
                },

                ),
              )

  ],
          ),)
        ),
       Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: CustomCard(colour: kActiveCardColor),
              ),
              Expanded(
                  child: CustomCard(colour:kActiveCardColor)),
            ],
          ),
        ),
        Container(
          color: kButtonColor,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: kBottomContainerHeight,
        ),
      ]),
    );
  }
}

