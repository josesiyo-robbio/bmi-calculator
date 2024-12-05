import 'package:flutter/material.dart';


class customContainer extends StatelessWidget
{
  const customContainer(
      {super.key, required this.coloring, required this.cardChild, required this.onPress}
      );
  final Color coloring ;
  final Widget cardChild;
  final Function onPress;



  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: () {
        onPress();
        print("Container tapped!");
      },

      child: Container(
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: coloring,
        ),
        child: cardChild,
      ),
    );
  }


}
