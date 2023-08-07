import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunesapp2/models/tune_model.dart';
import 'package:tunesapp2/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> Tunes = const [
    TuneModel(color: Color(0xfff44336), sound: 'note1.wav'),
    TuneModel(color: Color(0xfff89800), sound: 'note2.wav'),
    TuneModel(color: Color(0xfffeeb3b), sound: 'note3.wav'),
    TuneModel(color: Color(0xff4caf50), sound: 'note4.wav'),
    TuneModel(color: Color(0xff2f9688), sound: 'note5.wav'),
    TuneModel(color: Color(0xff2896f3), sound: 'note6.wav'),
    TuneModel(color: Color(0xff9c27b0), sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff253238),
        elevation: 0,
        title: const Center(
          child: Text(
            'Flutter Tune',
          ),
        ),
      ),
      body: Column(
        children: Tunes.map(
          (e) => TuneItem(
            tune: e,
          ),
        ).toList(),
      ),
    );
  }

  List<TuneItem> getTuneItems() {
    List<TuneItem> items = [];
    for (var color in Tunes) {
      items.add(
        TuneItem(tune: color),
      );
    }
    return items;
  }
}
