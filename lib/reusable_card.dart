import 'package:flutter/material.dart';
class ResuableCard extends StatelessWidget {
  const ResuableCard({
    @required this.colour,
    this.cardChild,
    this.onPress
  });
  final Color colour;
  final Widget cardChild;
  final Function onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
//color: Color(0xFF1D1E33),//if boxdecorection is there then it should be kept there only
      onTap:onPress,
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
//height: 200.0,
//width: 170.0,
    );
  }
}