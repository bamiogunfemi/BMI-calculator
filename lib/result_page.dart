import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'customCard.dart';
class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(
        title : Text ('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text('Your Result', style: kTitleTextStyle
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CustomCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Normal')
                ],
              ) ,
            ) ,
          )
        ],
      )
    );
  }
}
