import 'package:flutter/material.dart';

class PrevNextButton extends StatelessWidget {
  final VoidCallback preVocab;
  final VoidCallback nextVocab;

  const PrevNextButton(
      {Key? key, required this.preVocab, required this.nextVocab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        OutlinedButton.icon(
          onPressed: preVocab,
          icon: const Icon(Icons.chevron_left_rounded,
              color: Color.fromRGBO(101, 118, 85, 1)),
          label: Text('Prev', style: Theme.of(context).textTheme.bodyText2),
        ),
        OutlinedButton.icon(
          onPressed: nextVocab,
          icon: const Icon(Icons.chevron_right_rounded,
              color: Color.fromRGBO(101, 118, 85, 1)),
          label: Text('Next', style: Theme.of(context).textTheme.bodyText2),
        ),
      ],
    );
  }
}
