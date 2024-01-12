import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(this.textData, this.onPressedFunc, {super.key});

  final String textData;
  final void Function() onPressedFunc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
          ),
        ),
        onPressed: onPressedFunc,
        child: ButtonText(textData),
      ),
    );
  }
}
