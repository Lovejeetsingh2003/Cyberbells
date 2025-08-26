import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;

  const CustomTextfield({
    required this.controller,

    this.isPassword = false,
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,

      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 1, color: Color(0xffC5C6CC)),
        ),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 16, color: Color(0xffC5C6CC)),
      ),
      style: TextStyle(fontSize: 16, color: Colors.black),
    );
  }
}
