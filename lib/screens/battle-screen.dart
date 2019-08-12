import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:nima/nima_actor.dart';
import 'package:pokemon_fire_lava/components/battle_enemy_part.dart';

class BattleScreen extends StatefulWidget {
  BattleScreen({Key key}) : super(key: key);

  @override
  _BattleScreenState createState() => _BattleScreenState();
}

class _BattleScreenState extends State<BattleScreen> {
  AudioCache audioPlayer = AudioCache();
  String _animationName = "throw_ball";

  @override
  void initState() {
    super.initState();
    audioPlayer.clearCache();
//    audioPlayer.loop('fight_music.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            BattleEnemyPart(),
            Expanded(
              child: Container(),
            ),
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
