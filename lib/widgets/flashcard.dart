import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class Flashcard extends StatelessWidget {
  final String lessonId;
  final int index;

  const Flashcard(this.index, this.lessonId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vocabCard = vocabulary.where((card) {
      return card.lessonId.contains(lessonId);
    }).toList();

    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        width: 250,
        height: 250,
        child: FlipCard(
            front: Card(
              elevation: 8,
              child: Center(
                child: Text(
                  vocabCard[index].word,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            back: Card(
              elevation: 4,
              child: Center(
                child: Text(
                  vocabCard[index].meaning,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            )),
      ),
    );
  }
}
