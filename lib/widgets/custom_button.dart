import 'package:clone_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final GestureTapCallback ontap;
  const CustomButton({Key? key, required this.text, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: ontap,
        child: Container(
            height: 50,
            width: 200,
            decoration: const BoxDecoration(
                color: textclr,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: backgroundclr, fontSize: 30),
              ),
            )),
      ),
    );
  }
}
