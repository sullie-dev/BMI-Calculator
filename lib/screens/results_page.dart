import 'package:flutter/cupertino.dart';

import '../components/card.dart';
import '../constants.dart';
import '../components/nav_button.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult, @required this.result, @required this.interp});

  final String bmiResult;
  final String result;
  final String interp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your results',
                style: kLargeLabelStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result.toString(),
                    style: kResultStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITStyle,
                  ),
                  Text(
                    interp,
                    textAlign: TextAlign.center,
                    style: kResultBodyStyle,
                  )
                ],
              ),
            ),
          ),
          NavButton(
            event: 'Recalculate',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
