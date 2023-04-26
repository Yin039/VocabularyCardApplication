import 'dart:math';

import 'package:flutter/material.dart';
import '../widgets/flashcard.dart';
import '../widgets/prev_next_button.dart';

class FlashCardScreen extends StatefulWidget {
  final String lessonId;
  final String lessonNo;

  const FlashCardScreen(this.lessonId, this.lessonNo, {Key? key})
      : super(key: key);

  @override
  State<FlashCardScreen> createState() => _FlashCardScreenState();
}

class _FlashCardScreenState extends State<FlashCardScreen> {
  var _currentindex = Random().nextInt(9);

  void preVocab() {
    setState(() {
      _currentindex = (_currentindex - 1 >= 1) ? _currentindex - 1 : 0;
    });
  }

  void nextVocab() {
    setState(() {
      _currentindex = (_currentindex + 1 < 10) ? _currentindex + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcard - ' + widget.lessonNo),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flashcard(_currentindex, widget.lessonId),
          Container(
            padding: const EdgeInsets.all(15),
            child: PrevNextButton(preVocab: preVocab, nextVocab: nextVocab),
          ),
        ],
      ),
    );
  }
}
