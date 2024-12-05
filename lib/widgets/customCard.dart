



import 'package:flutter/material.dart';

class Customcard extends StatelessWidget
{

  const Customcard({super.key,required this.icon,required this.nameCard});
  final IconData icon;
  final String nameCard;


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
              icon,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(nameCard, style: TextStyle(fontSize: 18.0, color: Colors.black),)
        ],
      ) ,
    );
  }
}
