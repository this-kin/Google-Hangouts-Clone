import 'package:chat_app/models/chat_models.dart';
import 'package:chat_app/views/message.dart';
import 'package:chat_app/widgets/custom_listTile.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: recent.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                print(index.toString());
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return messageScreen();
                }));
              },
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CustomListTile(
                    imgUrl: recent[index].imgUrl,
                    message: recent[index].message,
                    active: recent[index].active,
                    lastActive: recent[index].lastActive,
                    sender: recent[index].sender,
                  )),
            );
          },
        ),
      ),
    );
  }
}
