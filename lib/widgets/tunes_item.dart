import 'package:flutter/material.dart';
import 'package:tunes_app/model/tunes_model.dart';

class TunesItem extends StatelessWidget {
  const TunesItem({super.key, required this.tunes});
  final TunesModel tunes;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => tunes.playsound(),
        child: Container(
          color: tunes.color,
        ),
      ),
    );
  }
}