import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  VoidCallback onPressed;
  String buttonText;
  CustomButton({super.key, required this.onPressed, required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 10,
      ),
      child: Text(buttonText),
    );
  }
}
