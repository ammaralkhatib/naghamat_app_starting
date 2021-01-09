import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MusicWidget());
}

class MusicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('نغمات'),
        ),
        body: Column(
          children: [
            RaisedButton(
              onPressed: () {
                final player = AudioCache();
                player.play('music-1.mp3');
              },
              child: Text('My Music'),
            )
          ],
        ),
      ),
    );
  }
}
