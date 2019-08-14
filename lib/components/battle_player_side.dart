import 'package:flutter/material.dart';
import 'package:nima/nima_actor.dart';

class BattlePlayerSide extends StatefulWidget {
  BattlePlayerSide({Key key}) : super(key: key);

  @override
  _BattlePlayerSideState createState() => _BattlePlayerSideState();
}

class _BattlePlayerSideState extends State<BattlePlayerSide> {
  String _animationName = "throw_ball";
  bool _isDisplayingPokemon = true;
  
  Widget _displaysPokemon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          height: 120,
          margin: EdgeInsets.only(left: 60),
          child: Image.asset(
            'assets/pikachu.png',
            fit: BoxFit.fitHeight,
            alignment: Alignment.bottomLeft,
          ),
        ),
        Container(
          height: 100,
          margin: EdgeInsets.only(right: 20),
          child: Image.asset(
            'assets/pokemon_info_ui.png',
            fit: BoxFit.fitHeight,
            alignment: Alignment.bottomRight,
          ),
        ),
      ],
    );
  }

  Widget _displaysCharacterAnimation() {
    return Container(
      height: 120,
      child: NimaActor(
        "assets/pokemon_main_character.nma",
        alignment: Alignment.bottomLeft,
        animation: _animationName,
        fit: BoxFit.fitHeight,
        completed: (String animationName) {
          setState(() {
            _animationName = "idle";
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        _isDisplayingPokemon ? _displaysPokemon() : _displaysCharacterAnimation(),
        Stack(
          children: <Widget>[
            Container(
              height: 120,
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
                style: TextStyle(color: Color(0xfff7f7f7), fontFamily: 'PokemonFireRed', fontSize: 40),
              ),
            ),
            Container(
              height: 120,
              width: double.infinity,
              child: Image.asset(
                'assets/battle_ui.png',
                fit: BoxFit.fitHeight,
                alignment: Alignment.bottomRight,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
