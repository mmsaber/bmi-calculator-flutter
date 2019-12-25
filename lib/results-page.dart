import 'package:bmi_calculator/reusable-card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Text(
              'Your Results',
              style: resultsStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: inactiveCardColor,
              customWidget: Text('Hello'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Center(
              child: Text(
                'احسبها',
                style: numberStyle,
              ),
            ),
            color: Color(0xFFEB1555),
            width: double.infinity,
            height: buttonHeight,
          )
        ],
      ),
    );
  }
}
