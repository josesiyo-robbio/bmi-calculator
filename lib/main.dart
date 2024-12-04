import 'package:flutter/material.dart';


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
                child: Container(
                  height: 200, // Altura definida para que sea visible
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.amber,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200, // Altura definida para que sea visible
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
          // Contenedores adicionales
          Expanded(
            child: Container(
               // Altura definida para que sea visible
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.amber,
              ),
            ),
          ),

          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200, // Altura definida para que sea visible
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.amber,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200, // Altura definida para que sea visible
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}
