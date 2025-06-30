import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TunesModel {
  final Color color;
  final String sound;

  TunesModel({required this.color, required this.sound});


  playsound() async {
    try {
    AudioCache.instance = AudioCache(prefix: '');
      final player = AudioPlayer();
      await player.play(AssetSource(sound));
     
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}



//  playsound() async {
//     try {
//       AudioCache.instance = AudioCache(prefix: '');
//       final player = AudioPlayer();
//       await player.play(AssetSource(sound));
//     } catch (e) {
//       // ignore: avoid_print
//       print(e);
//     }
//   }