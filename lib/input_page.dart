import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80.0,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'MALE',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8d8e98),
                        ),
                      ),
                    ],
                  ),
                ),
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

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;

  ReusableCard({@required this.cardColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: cardColor,
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
