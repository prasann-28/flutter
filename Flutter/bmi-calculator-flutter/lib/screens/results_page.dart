import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';
// import 'input_page.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation });

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Text("BMI CALCULATOR")
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
                child: Text("YOUR RESULTS", style: kTitleTextStyle,),
                padding: EdgeInsets.all(15),
              ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(bmiResult,style: kBMITextStyle,),
                  Text(resultText.toUpperCase(), style: kResultTextStyle,),

                  Text(interpretation.toUpperCase(), style: kBodyTextStyle, textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
          Expanded(
              child: BottomButton(onTap: (){
                Navigator.pop(context);
              } ,label: "RE-CALCULATE",)  )


        ],

      ),
    );
  }
}
