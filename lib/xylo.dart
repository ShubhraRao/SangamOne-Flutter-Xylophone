import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget keys(Color color, String filename) {
      return Expanded(
        child: FlatButton(
            minWidth: MediaQuery.of(context).size.width,
            color: color,
            onPressed: () {
              final player = AudioCache();
              player.play(filename);
            }),
      );
    }

    return Scaffold(
        body: SafeArea(
      child: Column(children: <Widget>[
        keys(Colors.red, "note1.wav"),
        keys(Colors.orange, "note2.wav"),
        keys(Colors.yellow, "note3.wav"),
        keys(Colors.green, "note4.wav"),
        keys(Colors.blue, "note5.wav"),
        keys(Colors.indigo, "note6.wav"),
        keys(Colors.purple, "note7.wav"),
      ]),
    ));
  }
}
