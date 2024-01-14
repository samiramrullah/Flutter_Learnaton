import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Best of Atif Aslam'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: MusicApp(),
      ),
    ),
  );
}

class MusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () async {
          AudioCache.instance = AudioCache(prefix: '');
          final player = AudioPlayer();
          await player.play(AssetSource('assets/terabin.wav'));
        },
        child: const Text('Play'),
      ),
    );
  }
}
