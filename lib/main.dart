import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Container buildKey({Color color, int soundNum}) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Expanded(
        child: FlatButton(
          color: color,
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.black)),
          onPressed: () {
            playSound(soundNum);
          },
          child: SizedBox(
            width: double.infinity,
            height: 70,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Xylophone')),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            buildKey(color: Colors.yellow, soundNum: 1),
            buildKey(color: Colors.red, soundNum: 2),
            buildKey(color: Colors.blue, soundNum: 3),
            buildKey(color: Colors.green, soundNum: 4),
            buildKey(color: Colors.pink, soundNum: 5),
            buildKey(color: Colors.indigo, soundNum: 6),
            buildKey(color: Colors.lime, soundNum: 7),
          ],
        ),
      ),
    ));
  }
}
