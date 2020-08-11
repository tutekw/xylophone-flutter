import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget _buildSoundButton({int noteNumber, Color buttonColor}) {
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
              _buildSoundButton(noteNumber: 1, buttonColor: Colors.red),
              _buildSoundButton(noteNumber: 2, buttonColor: Colors.orange),
              _buildSoundButton(noteNumber: 3, buttonColor: Colors.yellow),
              _buildSoundButton(noteNumber: 4, buttonColor: Colors.green),
              _buildSoundButton(noteNumber: 5, buttonColor: Colors.teal),
              _buildSoundButton(noteNumber: 6, buttonColor: Colors.blue),
              _buildSoundButton(noteNumber: 7, buttonColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
