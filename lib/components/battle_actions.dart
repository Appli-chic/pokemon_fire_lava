import 'package:flutter/material.dart';

class BattleActions extends StatefulWidget {
  BattleActions({Key key}) : super(key: key);

  @override
  _BattleActionsState createState() => _BattleActionsState();
}

class _BattleActionsState extends State<BattleActions> {
  bool _isDisplayingAttacks = false;

  _onAttackTapped() {
    setState(() {
      _isDisplayingAttacks = true;
    });
  }

  _displaysActionText(String text) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: 'PokemonFireRed',
        fontSize: 35,
        shadows: <Shadow>[
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 1.0,
            color: Color(0xffd8d0b0),
          ),
        ],
      ),
    );
  }

  _displaysActions() {
    return Container(
      height: 110,
      width: 275,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: _onAttackTapped,
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 25),
                  child: _displaysActionText("ATTACK"),
                ),
              ),
              Container(
                width: 80,
                margin: EdgeInsets.only(top: 20, right: 25),
                child: _displaysActionText("BAG"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20, left: 25),
                child: _displaysActionText("POKEMON"),
              ),
              Container(
                width: 80,
                margin: EdgeInsets.only(bottom: 20, right: 25),
                child: _displaysActionText("FLEE"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 110,
          width: double.infinity,
          child: Image.asset(
            'assets/background_text.png',
            fit: BoxFit.fill,
            alignment: Alignment.bottomLeft,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 38),
          child: Text(
            "What will PIKACHU do?",
            style: TextStyle(
              color: Color(0xfff7f7f7),
              fontFamily: 'PokemonFireRed',
              fontSize: 40,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 1.0,
                  color: Color(0xff685870),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Stack(
            children: <Widget>[
              Container(
                height: 110,
                width: 275,
                child: Image.asset(
                  'assets/battle_ui.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              _displaysActions(),
            ],
          ),
        ),
      ],
    );
  }
}
