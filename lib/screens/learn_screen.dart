import 'package:flutter/material.dart';
import 'package:s58798_vocabulary_card/widgets/prev_next_button.dart';
import 'package:s58798_vocabulary_card/widgets/learn_card.dart';

class VocabScreen extends StatefulWidget {
  final String lessonId;
  final String lessonNo;

  const VocabScreen(this.lessonId, this.lessonNo, {Key? key}) : super(key: key);

  @override
  _VocabScreenState createState() => _VocabScreenState();
}

class _VocabScreenState extends State<VocabScreen> {
  var _currentindex = 0;

  void preVocab() {
    setState(() {
      _currentindex = (_currentindex - 1 >= 0) ? _currentindex - 1 : 9;
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
        title: Text('Learn - ' + widget.lessonNo),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: VocabCard(_currentindex, widget.lessonId),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: PrevNextButton(preVocab: preVocab, nextVocab: nextVocab),
          ),
        ],
      ),
    );
  }
}
