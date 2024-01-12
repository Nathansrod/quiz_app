import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/rectangle_button.dart';
import 'package:quiz_app/styled_text.dart';

class ResultsView extends StatelessWidget {
  const ResultsView({
    super.key,
    required this.answersData,
    required this.onReset,
  });

  final List<String> answersData;
  final void Function() onReset;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < answersData.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'selected_answer': answersData[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final correctAnswers = summaryData
        .where((item) {
          return item['correct_answer'] == item['selected_answer'];
        })
        .toList()
        .length;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SummaryTitle('You answered $correctAnswers out of $numTotalQuestions questions correctly'),
          const SizedBox(
            height: 30.0,
          ),
          SizedBox(
            height: 400,
            child: SingleChildScrollView(
              child: QuestionsSummary(summaryData),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          RectangleButton('Try again?', Icons.refresh, onReset),
        ],
      ),
    );
  }
}
