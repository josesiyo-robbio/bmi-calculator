import 'package:bmicalculator/widgets/customCard.dart';
import 'package:bmicalculator/widgets/customContainer.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
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
              Expanded(
                child: customContainer(coloring: Colors.amber, cardChild: Customcard(icon: Icons.male, nameCard: 'MALE',),),
              ),
              Expanded(
                child: customContainer(coloring: Colors.amber, cardChild: Customcard(icon: Icons.female, nameCard: 'FEMALE',),),
              ),
            ],
          ),

          Expanded(
            child: customContainer(coloring: Colors.amber, cardChild: Customcard(icon: Icons.male, nameCard: 'MALE',),),
          ),

          Row(
            children: [
              Expanded(
                child: customContainer(coloring: Colors.amber, cardChild: Customcard(icon: Icons.male, nameCard: 'MALE',),),
              ),
              Expanded(
                child: customContainer(coloring: Colors.amber, cardChild: Customcard(icon: Icons.male, nameCard: 'MALE',),),
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
