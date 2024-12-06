


import 'package:bmicalculator/widgets/customContainer.dart';
import 'package:flutter/material.dart';
import '../styles/globalStyle.dart';
import 'inputPage.dart';

class Resultspage extends StatelessWidget 
{
  const Resultspage({super.key, required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR',
          style: kLabelTextStyle,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Container(
            child: Text('Your Result',
            style: kTittleStyle,),
          ),
          ),
          Expanded(
            flex: 5,
              child: customContainer(coloring: Colors.amber, cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text(resultText, style:kResultStyle ,),
                  Text(bmiResult.toString(), style: kBMIStyle,),
                  Padding(padding: EdgeInsets.only(left: 12.0),
                  child: Text(interpretation, style: kBodyStyle,))
                ],
              ), onPress: (){}),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) => InputPage() ));

            },

            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
              color: Colors.pink,
              child: Text('RE-CALCULATE',style: kLargeButtonStyle,),
            ),
          )
        ]
      ),
    );
  }
}
