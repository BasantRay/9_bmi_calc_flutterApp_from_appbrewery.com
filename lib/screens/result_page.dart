import 'package:bmi_calc/components/calculator_brain.dart';
import 'package:bmi_calc/constant.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calc/components/calculator_brain.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({required this.bmiResult, required this.interpretation, required this.resultText});

  final String bmiResult;
  final String  resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
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
                children: [
                  Text(resultText,style: kResultTextStyle,),
                  Text(bmiResult,style: kBMIResultStyle,),
                  Text(interpretation,style: kBodyTextStyle,),
                ],
              ),
            ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
