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
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
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

          //SLIDER
          Expanded(
            child: customContainer
            (
              onPress:(){},
              coloring: kMainColor,
              cardChild: Column(
              children: [
                Text('HEIGTH')
              ],
              ),
            ),
          ),

          Row(
            children: [
              Expanded(
                child: customContainer
                (
                  onPress:(){},
                  coloring: kMainColor,
                  cardChild: Customcard(icon: Icons.male, nameCard: 'MALE',),
                ),
              ),

              Expanded(
                child: customContainer
                (
                  onPress:(){},
                  coloring: kMainColor,
                  cardChild: Customcard(icon: Icons.male, nameCard: 'MALE',),
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
