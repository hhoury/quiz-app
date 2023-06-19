import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.buttonPressed, this.text, {super.key});
  final String text;
  final void Function() buttonPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonPressed,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 33, 1, 95),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
