import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({int soundNumber, Color c}) {
    return Expanded(
      child: FlatButton(
        child: Text(''),
        color: c,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1, c: Colors.red),
              buildKey(soundNumber: 2, c: Colors.green),
              buildKey(soundNumber: 3, c: Colors.orange),
              buildKey(soundNumber: 4, c: Colors.yellow),
              buildKey(soundNumber: 5, c: Colors.blue),
              buildKey(soundNumber: 6, c: Colors.teal),
              buildKey(soundNumber: 7, c: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
