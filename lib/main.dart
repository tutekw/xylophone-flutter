import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget _buildSoundButton(int noteNumber, Color buttonColor) {
    return Expanded(
      child: FlatButton(
        child: Text('  '),
        color: buttonColor,
        onPressed: () {
          playSound(noteNumber);
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
              _buildSoundButton(1, Colors.red),
              _buildSoundButton(2, Colors.orange),
              _buildSoundButton(3, Colors.yellow),
              _buildSoundButton(4, Colors.green),
              _buildSoundButton(5, Colors.teal),
              _buildSoundButton(6, Colors.pink),
              _buildSoundButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
