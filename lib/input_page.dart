import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'top_card.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1d1e33);
const bottomContainerColor = Color(0xFFeb1555);

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
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  cardColor: activeCardColor,
                  cardChild: new TopCard(
                    iconName: FontAwesomeIcons.mars,
                    cardText: 'MALE',
                  ),
                ),
                ReusableCard(
                  cardColor: activeCardColor,
                  cardChild: new TopCard(
                    iconName: FontAwesomeIcons.venus,
                    cardText: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  cardColor: activeCardColor,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  cardColor: activeCardColor,
                ),
                ReusableCard(
                  cardColor: activeCardColor,
                ),
              ],
            ),
          ),
          Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight),
        ],
      ),
    );
  }
}
