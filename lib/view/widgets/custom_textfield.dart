import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  
  TextEditingController controller;
  Widget icon;
  String hintText;
  TextInputType ? keyboardType;

CustomTextField({required this.controller,required this.hintText,required this.icon,this.keyboardType});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
    );
  }
}