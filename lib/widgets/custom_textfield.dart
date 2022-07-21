import 'package:clone_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  const CustomTextField(
      {Key? key, required this.controller, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: textclr),
      controller: controller,
      decoration: InputDecoration(
          filled: true,
          labelText: text,
          labelStyle: const TextStyle(color: textclr, fontSize: 20)),
    );
  }
}
