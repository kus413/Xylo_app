import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int keyNumber;
  Color keyColor;

  Widget builtKey({int keyNumber, Color keyColor}) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        child: Container(
          color: keyColor,
        ),
        onPressed: () {
          playSound(keyNumber);
        },
      ),
    );
  }

  void playSound(int keyNumber) {
    final player = AudioCache();
    player.play("note$keyNumber.wav");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
//      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              builtKey(keyNumber: 1, keyColor: Colors.red),
              builtKey(keyNumber: 2, keyColor: Colors.yellow),
              builtKey(keyNumber: 3, keyColor: Colors.blue),
              builtKey(keyNumber: 4, keyColor: Colors.green),
              builtKey(keyNumber: 5, keyColor: Colors.purple),
              builtKey(keyNumber: 6, keyColor: Colors.orange),
              builtKey(keyNumber: 7, keyColor: Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
