import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const Playsound());
}

class Playsound extends StatefulWidget {
  const Playsound({Key? key}) : super(key: key);

  @override
  State<Playsound> createState() => _PlaysoundState();
}

class _PlaysoundState extends State<Playsound> {
  final player = AudioPlayer();

  void soundnum(int num) {
    player.play('note$num.wav');
  }

  Expanded buildkey({required Color type, required int num}) {
    return Expanded(
      child: TextButton(
        child: Container(
          color: type,
        ),
        onPressed: () {
          soundnum(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade800,
          appBar: AppBar(
            backgroundColor: Colors.grey.shade500,
            title: const Center(
              child: Text('Play_Sound'),
            ),
          ),
          body: Column(children: <Widget>[
            buildkey(type: Colors.red, num: 1),
            buildkey(type: Colors.orange, num: 2),
            buildkey(type: Colors.yellow, num: 3),
            buildkey(type: Colors.green, num: 4),
            buildkey(type: Colors.blue, num: 5),
            buildkey(type: Colors.brown, num: 6),
            buildkey(type: Colors.indigo, num: 7),
          ]),
        ),
      ),
    );
  }
}
