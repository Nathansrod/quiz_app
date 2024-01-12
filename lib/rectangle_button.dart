import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class RectangleButton extends StatelessWidget {
  const RectangleButton(this.textData, this.iconData, this.onPressedFunc,
      {super.key});

  final String textData;
  final IconData? iconData;
  final void Function() onPressedFunc;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
      ),
      onPressed: onPressedFunc,
      icon: Icon(
        iconData,
        color: Colors.white,
      ),
      label: ButtonText(textData),
    );
  }
}
