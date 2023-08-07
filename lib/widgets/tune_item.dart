import 'package:flutter/cupertino.dart';
import 'package:tunesapp2/models/tune_model.dart';
import 'package:audioplayers/audioplayers.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
