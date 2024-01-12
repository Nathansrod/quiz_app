import 'package:flutter/material.dart';
import 'package:quiz_app/background_container.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_view.dart';
import 'package:quiz_app/results_view.dart';
import 'initial_view.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> userAnswers = [];
  var activeView = 'initial-view';

  void switchView() {
    setState(() {
      activeView = 'questions-view';
    });
  }

  void updateUserAnswer(String answer) {
    userAnswers.add(answer);
    if (userAnswers.length == questions.length) {
      setState(() {
        activeView = 'results-view';
      });
    }
  }

  void resetQuiz() {
    userAnswers = [];
    setState(() {
      activeView = 'initial-view';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeViewWidget = InitialView(switchView);

    if (activeView == 'questions-view') {
      activeViewWidget = QuestionsView(updateUserAnswer);
    }

    if (activeView == 'results-view') {
      activeViewWidget = ResultsView(
        answersData: userAnswers,
        onReset: resetQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: BackgroundContainer(
          child: activeViewWidget,
        ),
      ),
    );
  }
}
