import 'package:flutter/material.dart';
import 'package:tunes_app/model/tunes_model.dart';
import 'package:tunes_app/widgets/tunes_item.dart';

class TunesView extends StatelessWidget {
   TunesView({super.key});
    final List<TunesModel> tunes = [
    TunesModel(color: Color(0xffF44336), sound: 'assets/note1.wav'),
    TunesModel(color: Color(0xffF89800), sound: 'assets/note2.wav'),
    TunesModel(color: Color(0xffFEEB3B), sound: 'assets/note3.wav'),
    TunesModel(color: Color(0xff4CAF50), sound: 'assets/note4.wav'),
    TunesModel(color: Color(0xff2F9688), sound: 'assets/note5.wav'),
    TunesModel(color: Color(0xff2896F3), sound: 'assets/note6.wav'),
    TunesModel(color: Color(0xff9C27B0), sound: 'assets/note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1D2A32),
        title: Text('Tunes App', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: tunes.map((e) => TunesItem(tunes: e)).toList(),
      ),
    );
  }
}
