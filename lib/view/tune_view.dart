import 'package:flutter/material.dart';
import 'package:tounapp/models/tune_model.dart';
import 'package:tounapp/widgets/tune_item.dart';

void main() {
  runApp(const TuneView());
}

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffF44336), sound: 'note1.wav'),
    TuneModel(color: Color(0xffF89800), sound: 'note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'note7.wav'),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
// علشان تكون لازقه فى الاسكرين
          elevation: 0,
          backgroundColor: const Color(0xff253238),
          title: const Text(
            'Flutter Tune',
          ),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Column(
          children: tunes
              .map(
                (e) => TuneItem(tune: e),
              )
              .toList(),
        ),
      ),
    );
  }
}
