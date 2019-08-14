import 'package:flutter/material.dart';

class BattleEnemySide extends StatefulWidget {
  BattleEnemySide({Key key}) : super(key: key);

  @override
  _BattleEnemySideState createState() => _BattleEnemySideState();
}

class _BattleEnemySideState extends State<BattleEnemySide> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 80,
          margin: EdgeInsets.only(left: 60),
          child: Image.asset(
            'assets/enemy_ui.png',
            fit: BoxFit.fitHeight,
            alignment: Alignment.topRight,
          ),
        ),
        Container(
          height: 120,
          margin: EdgeInsets.only(top: 8, right: 25),
          child: Image.asset(
            'assets/Butterfree.png',
            fit: BoxFit.fitHeight,
            alignment: Alignment.topRight,
          ),
        ),
      ],
    );
  }
}
