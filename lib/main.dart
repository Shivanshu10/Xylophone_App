import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final player=AudioCache();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MusicBtn(sound: 1, player: player, color: Colors.red),
        MusicBtn(sound: 2, player: player, color: Colors.orange),
        MusicBtn(sound: 3, player: player, color: Colors.yellow),
        MusicBtn(sound: 4, player: player, color: Colors.blue),
        MusicBtn(sound: 5, player: player, color: Colors.green),
        MusicBtn(sound: 6, player: player, color: Colors.indigo),
        MusicBtn(sound: 7, player: player, color: Colors.purple),
      ],
    );
  }
}

class MusicBtn extends StatelessWidget {
  final int sound;
  final MaterialColor color;
  final AudioCache player;
  const MusicBtn({ @required this.sound, @required this.player, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => {
          player.play("note$sound.wav")
        },
        child: Container(
          color: color,
        )
      ),
    );
  }
}