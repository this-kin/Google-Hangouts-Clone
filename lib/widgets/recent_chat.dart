import 'package:chat_app/models/chat_models.dart';
import 'package:chat_app/utils/colors.dart';
import 'package:chat_app/views/message.dart';
import 'package:flutter/material.dart';

class Recent extends StatefulWidget {
  @override
  _RecentState createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(9, 10, 9, 0),
        child: ListView.builder(
            itemCount: recent.length,
            itemBuilder: (_, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Message();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Container(
                    height: 70,
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage(recent[index].imgUrl),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 18, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                recent[index].sender,
                                style: TextStyle(fontSize: 18),
                              ),
                              Row(
                                children: <Widget>[
                                  selectedIndex == index
                                      ? CircleAvatar(
                                          radius: 3,
                                          backgroundColor: comColor,
                                        )
                                      : Text(
                                          recent[index].message,
                                          style: TextStyle(
                                              fontSize: 12, color: blackText),
                                        ),
                                  Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Text(
                                      recent[index].lastActive,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
