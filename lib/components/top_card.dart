import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class TopCard extends StatelessWidget {
  final IconData iconName;
  final String cardText;
  const TopCard({this.iconName, this.cardText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 80.0,
          color: Colors.grey,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
