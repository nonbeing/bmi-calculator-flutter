import 'package:flutter/material.dart';

const textColor = Color(0xFF8d8e98);

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: textColor,
);

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
          style: labelTextStyle,
        ),
      ],
    );
  }
}
