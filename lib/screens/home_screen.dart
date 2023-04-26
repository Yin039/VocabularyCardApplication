import 'package:flutter/material.dart';
import 'package:s58798_vocabulary_card/widgets/lesson_button.dart';

import '../data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hangul Cards'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: lesson
                    .map((catData) => LessonButton(catData.id, catData.title))
                    .toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('너를 믿어서 힘내요!',
                    style: Theme.of(context).textTheme.headline1),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(5),
                  child: Image.network(
                    'https://www.bergerpaints.com/imaginecolours/wp-content/uploads/2017/01/colour-blog-news-size-01-1.png',
                    width: 150,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
