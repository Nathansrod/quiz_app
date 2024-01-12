import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(this.textData, {super.key});

  final String textData;

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 24,
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  const ButtonText(this.textData, {super.key});

  final String textData;

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      textAlign: TextAlign.center,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class QuestionText extends StatelessWidget {
  const QuestionText(this.textData, {super.key});

  final String textData;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      textData,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}

class SummaryTitle extends StatelessWidget {
  const SummaryTitle(this.textData, {super.key});

  final String textData;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      textData,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 24,
      ),
    );
  }
}

class AnswerNumber extends StatelessWidget {
  const AnswerNumber(this.textData, this.correct, {super.key});

  final String textData;
  final bool correct;

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor =
        correct ? Colors.greenAccent : Colors.redAccent;

    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor,
      ),
      child: SizedBox(
        width: 35,
        height: 35,
        child: Center(
          child: Text(
            textData,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class SummaryQuestionText extends StatelessWidget {
  const SummaryQuestionText(this.textData, {super.key});

  final String textData;

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }
}

class SelectedAnswerText extends StatelessWidget {
  const SelectedAnswerText(this.textData, {super.key});

  final String textData;

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: GoogleFonts.lato(
        color: const Color.fromARGB(200, 255, 255, 255),
        fontSize: 16,
      ),
    );
  }
}

class CorrectAnswerText extends StatelessWidget {
  const CorrectAnswerText(this.textData, {super.key});

  final String textData;

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: GoogleFonts.lato(
        color: const Color.fromARGB(200, 105, 240, 175),
        fontSize: 16,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}