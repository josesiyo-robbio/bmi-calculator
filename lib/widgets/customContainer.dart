import 'package:flutter/material.dart';


class customContainer extends StatelessWidget
{
  const customContainer(
      {super.key, required this.coloring, required this.cardChild}
      );
  final Color coloring ;
  final Widget cardChild;



  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 200,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: coloring,
      ),
      child: cardChild,
    );
  }
}
