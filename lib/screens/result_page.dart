import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/custom_card.dart';
import '../components/buttom_button.dart';
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
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
                  Text('Normal', style: kResultTextStyle),
                  Text('18.3', style: kBMITextStyle,),
                  Text('NOT BAS',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,)

                ],
              ) ,     
            ) ,
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      )
    );
  }
}
