import 'package:bmicalculator/pages/resultsPage.dart';
import 'package:bmicalculator/services/calculator_service.dart';
import 'package:bmicalculator/styles/globalStyle.dart';
import 'package:bmicalculator/widgets/customCard.dart';
import 'package:bmicalculator/widgets/customContainer.dart';
import 'package:flutter/material.dart';




const bottomContainerHeight = 80.0;

enum Gender {
  male,
  female
}



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage>
{
  //default values
  double _currentHeight = 150.0;
  int currentWeight = 60;
  int defaultAge = 18;
  Gender selectedGender = Gender.male;


  void selectMaleGender() {
    setState(() {
      selectedGender = Gender.male;
      print(selectedGender);
    });
  }

  void selectFemaleGender() {
    setState(() {
      selectedGender = Gender.female;
      print(selectedGender);
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR',
          style: kLabelTextStyle,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [

              //MALE SECTION
              Expanded(
                child: customContainer
                  (
                  onPress:selectMaleGender,
                  coloring: selectedGender == Gender.male ? kMainColorMale  :  kInactiveColor,
                  cardChild: Customcard(icon: Icons.male, nameCard: 'MALE',),
                ),
              ),

              //FEMALE SECTION
              Expanded(
                child: customContainer
                  (
                  onPress:selectFemaleGender,
                  coloring: selectedGender == Gender.female ? kMainColorFemale  :  kInactiveColor,
                  cardChild: Customcard(icon: Icons.female, nameCard: 'FEMALE',),
                ),
              ),
            ],
          ),

          //SLIDER HEIGHT
          Expanded(
            child: customContainer
              (
              onPress:(){},
              coloring: kMainColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('HEIGTH',
                    style: kLabelTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(_currentHeight.toString(), style: kLabelTextStyleFunction,),
                      const Text('cm', style: kLabelTextStyle,),
                    ],

                  ),
                  Slider
                    (
                    value: _currentHeight,
                    min: 50,
                    max: 200,
                    divisions: 400,
                    label: _currentHeight.toStringAsFixed(1),
                    onChanged: (double value) {

                      setState(() {
                        _currentHeight = double.parse(value.toStringAsFixed(1));

                      });

                    },)
                ],
              ),
            ),
          ),


          Row(
            children: [

              //WEIGHT CARD
              Expanded(
                child: customContainer
                  (
                  onPress:(){},
                  coloring: kMainColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text('WEIGHT', style: kLabelTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(currentWeight.toString(), style: kLabelTextStyleFunction,),
                        ],

                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed:() {
                            setState(() {
                              currentWeight++;
                            });
                          } , child: Icon(Icons.add_box_rounded)),
                          SizedBox(
                            child: Padding(padding: EdgeInsets.all(5)),
                          ),
                          ElevatedButton(onPressed:()
                          {
                            setState(()
                            {
                              currentWeight--;
                              if(currentWeight <= 20)
                              {
                                currentWeight = 20;
                              }
                            });
                          } , child: Icon(Icons.indeterminate_check_box)),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //AGE CARD
              Expanded(
                child: customContainer
                  (
                  onPress:(){},
                  coloring: kMainColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text('AGE', style: kLabelTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(defaultAge.toString(), style: kLabelTextStyleFunction,),
                        ],

                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed:() {
                            setState(() {
                              defaultAge++;
                            });
                          } , child: Icon(Icons.add_box_rounded)),
                          SizedBox(
                            child: Padding(padding: EdgeInsets.all(5)),
                          ),
                          ElevatedButton(onPressed:() {
                            setState(() {
                              defaultAge--;
                              if(defaultAge <= 0)
                              {
                                defaultAge = 0;
                              }
                            });
                          } , child: Icon(Icons.indeterminate_check_box)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              CalculatorService calc = CalculatorService(height: _currentHeight , weight: currentWeight);


              Navigator.push(context, MaterialPageRoute(builder: (context) => Resultspage(bmiResult: calc.calculateBMI(), interpretation: calc.getInterpretation(),
                resultText: calc.getResult() ,) ));


            },

            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
              color: Colors.pink,
              child: Text('CALCULATE',style: kLargeButtonStyle,),
            ),
          )
        ],
      ),


    );
  }
}
