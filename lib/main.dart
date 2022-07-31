// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(XyloPhone());
}

class XyloPhone extends StatelessWidget {
  XyloPhone({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/assets_note$soundNumber.wav"),
    );
  }

  Expanded buildkey(Color color, int soundNumer) {
    
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumer);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            buildkey(Colors.blue, 1),
            buildkey(Colors.green, 2),
            buildkey(Colors.purple.shade100, 3),
            buildkey(Colors.yellow.shade100, 4),
            buildkey(Colors.red.shade100, 5),
            buildkey(Colors.blue.shade100, 6),
            buildkey(Colors.purple.shade100, 7),
          ],
        ),
      )),
    );
  }
}
