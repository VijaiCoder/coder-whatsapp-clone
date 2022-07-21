import 'package:clone_app/info.dart';
import 'package:clone_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ListViewHome extends StatelessWidget {
  const ListViewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: info.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ChatScreen()));
                        },
                        child: ListTile(
                          trailing: Text(
                            info[index]['time'].toString(),
                            style:
                                const TextStyle(fontSize: 13, color: textclr),
                          ),
                          leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  info[index]['profilePic'].toString())),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              info[index]['message'].toString(),
                              style:
                                  const TextStyle(color: textclr, fontSize: 15),
                            ),
                          ),
                          title: Text(
                            info[index]['name'].toString(),
                            style: const TextStyle(color: textclr),
                          ),
                        ));
                  }),
            ),
            const Divider(
              color: dividerColor,
              indent: 85,
            ),
          ],
        ));
  }
}
