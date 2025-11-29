import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.fillcolor,
    required this.isselected,
  });
  final Color fillcolor;
  final bool isselected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: isselected ? kTextLightColor : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: fillcolor),
      ),
    );
  }
}
