import 'package:flutter/material.dart';

class OtpTextfield extends StatelessWidget {
  final TextEditingController controller;

  const OtpTextfield({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: TextField(
        controller: controller,
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: "",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 1, color: Color(0xffC5C6CC)),
          ),
        ),
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }
}
