import 'package:flutter/material.dart';
import 'package:quiz_app/rectangle_button.dart';
import 'package:quiz_app/styled_text.dart';

const titleImagePath = 'assets/images/quiz-logo.png';

class InitialView extends StatelessWidget {
  const InitialView(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            titleImagePath,
            height: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          const HeaderText('Learn Flutter the fun way!'),
          const SizedBox(
            height: 50,
          ),
          RectangleButton('Start Quiz', Icons.arrow_circle_right_outlined, startQuiz),
        ],
      );
  }
}
