import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (item) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnswerNumber(
                ((item['question_index'] as int) + 1).toString(),
                item['selected_answer'] == item['correct_answer'],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SummaryQuestionText(item['question'] as String),
                    const SizedBox(
                      height: 5.0,
                    ),
                    SelectedAnswerText(item['selected_answer'] as String),
                    CorrectAnswerText(item['correct_answer'] as String),
                    const SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
