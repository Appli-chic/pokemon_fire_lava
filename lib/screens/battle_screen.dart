import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_fire_lava/components/battle_actions.dart';
import 'package:pokemon_fire_lava/components/battle_enemy_side.dart';
import 'package:pokemon_fire_lava/components/battle_player_side.dart';

class BattleScreen extends StatefulWidget {
  BattleScreen({Key key}) : super(key: key);

  @override
  _BattleScreenState createState() => _BattleScreenState();
}

class _BattleScreenState extends State<BattleScreen> {
  AudioCache audioPlayer = AudioCache();

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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background-grass.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BattleEnemySide(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                BattlePlayerSide(),
                BattleActions(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
