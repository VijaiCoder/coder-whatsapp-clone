import 'package:clone_app/utils/colors.dart';
import 'package:flutter/material.dart';

import '../info.dart';
import '../widgets/chat_list.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.video_call),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(children: [
        const Expanded(child: ChatList()),
        TextFormField(
          style: const TextStyle(color: textclr, fontSize: 20),
          decoration: InputDecoration(
            prefixIcon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                Icons.emoji_emotions,
                color: Colors.grey,
              ),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.attach_file,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            labelText: 'Type Some Message',
            labelStyle: const TextStyle(color: textclr, fontSize: 20),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    const BorderSide(width: 0, style: BorderStyle.none)),
            filled: true,
            fillColor: mobileChatBoxColor,
          ),
        )
      ]),
    );
  }
}
