import 'package:flutter/material.dart';
import 'package:s58798_vocabulary_card/data.dart';

class VocabCard extends StatelessWidget {
  final String lessonId;
  final int index;

  const VocabCard(this.index, this.lessonId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vocabCard = vocabulary.where((card) {
      return card.lessonId.contains(lessonId);
    }).toList();

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Column(
              children: [
                Center(
                  child: Text(vocabCard[index].word,
                      style: Theme.of(context).textTheme.headline1),
                ),
                Center(
                  child: Text(vocabCard[index].pronounce,
                      style: Theme.of(context).textTheme.headline1),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: Color(0xff657655)),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Definition',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Card(
                elevation: 0.0,
                child: Text(
                  vocabCard[index].meaning,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xff657655),
            ),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Sentences',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vocabCard[index].sentence[0],
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    vocabCard[index].sentence[1],
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
