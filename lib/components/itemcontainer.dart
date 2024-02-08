import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuneapp/Models/Tunes.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({required this.t});
  final Tunes t;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(AssetSource(t.sound));
        },
        child: Container(
          color: t.color,
          width: double.infinity,
        ),
      ),
    );
  }
}
