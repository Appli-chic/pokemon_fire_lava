import 'package:flutter/material.dart';

class BattleEnemyPart extends StatefulWidget {
  BattleEnemyPart({Key key}) : super(key: key);

  @override
  _BattleEnemyPartState createState() => _BattleEnemyPartState();
}

class _BattleEnemyPartState extends State<BattleEnemyPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(top: 8),
      width: double.infinity,
      child: Image.asset(
        'assets/trainer.png',
        fit: BoxFit.fitHeight,
        alignment: Alignment.topRight,
      ),
    );
  }
}
