import 'package:flutter/material.dart';

class BattleEnemySide extends StatefulWidget {
  BattleEnemySide({Key key}) : super(key: key);

  @override
  _BattleEnemySideState createState() => _BattleEnemySideState();
}

class _BattleEnemySideState extends State<BattleEnemySide> {
  Widget _displaysEnemyInfo() {
    return Container(
      margin: EdgeInsets.only(left: kToolbarHeight),
      child: Stack(
        children: <Widget>[
          Container(
            height: 80,
            width: 279,
            child: Image.asset(
              'assets/enemy_ui.png',
              fit: BoxFit.fitHeight,
              alignment: Alignment.topRight,
            ),
          ),
          Container(
            width: 264,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "BUTTERFREE",
                    style: TextStyle(
                      fontFamily: 'PokemonFireRed',
                      fontSize: 27,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 1.0,
                          color: Color(0xffd8d0b0),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  margin: EdgeInsets.only(top: 12),
                  child: Image.asset(
                    'assets/female.png',
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.topRight,
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20),
                  child: Text(
                    "Lv5",
                    style: TextStyle(
                      fontFamily: 'PokemonFireRed',
                      fontSize: 27,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 1.0,
                          color: Color(0xffd8d0b0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 134,
            height: 10,
            margin: EdgeInsets.only(top: 46, left: 107),
            decoration: BoxDecoration(
              color: Color(0xff70f8a8),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _displaysEnemyInfo(),
        Container(
          margin: EdgeInsets.only(right: 60),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                height: 80,
                width: 284,
                child: Image.asset(
                  'assets/grass-enemy.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                height: 120,
                margin: EdgeInsets.only(bottom: 25),
                child: Image.asset(
                  'assets/Butterfree.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
