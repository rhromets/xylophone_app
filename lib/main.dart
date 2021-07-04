import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    Audio.load('assets/note$noteNumber.wav')..play();
  }

  Expanded buildKey({Color color = Colors.black, int noteNumber = 1}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(noteNumber);
        },
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(color: Colors.red, noteNumber: 1),
            buildKey(color: Colors.orange, noteNumber: 2),
            buildKey(color: Colors.yellow, noteNumber: 3),
            buildKey(color: Colors.green, noteNumber: 4),
            buildKey(color: Colors.teal, noteNumber: 5),
            buildKey(color: Colors.blue, noteNumber: 6),
            buildKey(color: Colors.purple, noteNumber: 7),
          ]),
        ),
      ),
    );
  }
}
