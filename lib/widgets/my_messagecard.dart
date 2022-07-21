import 'package:clone_app/utils/colors.dart';
import 'package:flutter/material.dart';

class MyMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const MyMessageCard({Key? key, required this.message, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
          color: messageColor,
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 30, bottom: 20, top: 8),
              child: Text(
                message,
                style: const TextStyle(fontSize: 15, color: textclr),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 2,
              child: Row(children: [
                Text(
                  date,
                  style: const TextStyle(fontSize: 13, color: Colors.white38),
                ),
                const SizedBox(width: 5),
                const Icon(
                  Icons.done_all,
                  color: Colors.white60,
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
