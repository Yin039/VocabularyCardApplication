import 'package:flutter/material.dart';
import 'flashcard_screen.dart';
import 'learn_screen.dart';

class LessonScreen extends StatelessWidget {
  final String id;
  final String title;

  const LessonScreen(this.id, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VocabScreen(id, title),
                        settings: RouteSettings(arguments: id),
                      ));
                },
                child: const Text('Learn'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FlashCardScreen(id, title),
                        settings: RouteSettings(arguments: id),
                      ));
                },
                child: const Text('Flashcard'),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(5),
              child: Image.network(
                'https://www.bergerpaints.com/imaginecolours/wp-content/uploads/2017/01/colour-blog-news-size-01-1.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
