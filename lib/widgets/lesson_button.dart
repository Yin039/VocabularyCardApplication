import 'package:flutter/material.dart';
import '../screens/lesson_screen.dart';

class LessonButton extends StatelessWidget {
  final String id;
  final String title;

  const LessonButton(this.id, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(15),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LessonScreen(id, title),
                settings: RouteSettings(arguments: id),
              ));
        },
        child: Text(title),
      ),
    );
  }
}
