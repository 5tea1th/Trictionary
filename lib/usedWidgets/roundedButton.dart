import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, required this.buttonText,required this.buttonFunction,required this.buttonColor});
  final String buttonText;
  final Function buttonFunction;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            buttonFunction();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
          ),
        ),
      ),
    );
  }
}
