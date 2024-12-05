import 'package:bmicalculator/styles/globalStyle.dart';
import 'package:bmicalculator/widgets/customCard.dart';
import 'package:bmicalculator/widgets/customContainer.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;

enum Gender {
  male,
  female
}

Gender selectedGender = Gender.male;

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


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
              cardChild: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGTH',
                style: kLabelTextStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('180', style: kLabelTextStyleFunction,),
                    Text('cm', style: kLabelTextStyle,)
                  ],
                )
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
                          Text('180', style: kLabelTextStyleFunction,),
                        ],

                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed:() {} , child: Icon(Icons.add_box_rounded)),
                          SizedBox(
                          child: Padding(padding: EdgeInsets.all(5)),
                          ),
                          ElevatedButton(onPressed:() {} , child: Icon(Icons.indeterminate_check_box)),
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
                          Text('99', style: kLabelTextStyleFunction,),
                        ],

                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed:() {} , child: Icon(Icons.add_box_rounded)),
                          SizedBox(
                            child: Padding(padding: EdgeInsets.all(5)),
                          ),
                          ElevatedButton(onPressed:() {} , child: Icon(Icons.indeterminate_check_box)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
            color: Colors.pink,
          )
        ],
      ),


    );
  }
}
