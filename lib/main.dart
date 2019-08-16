import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokemon_fire_lava/screens/battle_screen.dart';

void main() {
  // Set fullscreen
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  SystemChrome.setEnabledSystemUIOverlays([]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BattleScreen(),
    );
  }
}