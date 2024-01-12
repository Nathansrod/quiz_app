import 'package:flutter/material.dart';
import 'package:quiz_app/rounded_button.dart';
import 'package:quiz_app/styled_text.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsView extends StatefulWidget {
  const QuestionsView(this.updateUserAnswer, {super.key});

  final void Function(String answer) updateUserAnswer;

  @override
  State<QuestionsView> createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {
  var questionIndex = 0;

  void nextQuestion(String answer) {
    widget.updateUserAnswer(answer);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          QuestionText(currentQuestion.text),
          const SizedBox(
            height: 30,
          ),
          // ... -> Spread operator. Takes each list item and places them separated by ','.
          ...currentQuestion.getShuffledAnswers().map((item) {
            return RoundedButton(item, () {
              nextQuestion(item);
            });
          }),
        ],
      ),
    );
  }
}
