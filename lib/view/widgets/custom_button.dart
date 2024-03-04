import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onPressed;
  String buttonText;
  CustomButton({required this.onPressed,required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
     child: Text(buttonText),
     style: ElevatedButton.styleFrom(
      elevation: 10,
     ),
     );
  }
}