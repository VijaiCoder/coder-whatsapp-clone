import 'package:clone_app/info.dart';
import 'package:clone_app/widgets/my_messagecard.dart';
import 'package:clone_app/widgets/sender_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            return MyMessageCard(
                message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString());
          }
          return SenderCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        });
  }
}
