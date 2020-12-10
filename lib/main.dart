import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //function
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
void buildKey(){
  Expanded(
    child: FlatButton(
        color: Colors.red,
        onPressed: () {
          playSound(1);
        },
        child: Text('Do')),
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
            children: <Widget>[
              buildKey();
              buildKey();
              buildKey();
              buildKey();
              buildKey();
              buildKey();
              buildKey();
            ],
          ),
        ),
      ),
    );
  }
}
