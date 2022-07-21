import 'package:clone_app/utils/colors.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: transparent,
    content: Container(
      color: greenclr,
      padding: const EdgeInsets.all(10),
      child: Text(text,
          style: const TextStyle(
            color: textclr,
          )),
    ),
  ));
}
