import 'package:chat_app/models/messages_model.dart';
import 'package:chat_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int lastIndex = 3;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bkgrdColor,
          elevation: 0,
          title: Text(
            "John Wick",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          centerTitle: false,
          iconTheme: IconThemeData(color: comColor),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.video_call), onPressed: () {}),
            IconButton(icon: Icon(Icons.add_call), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
          ],
        ),
        backgroundColor: bkgrdColor,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                  child: ListView.builder(
                      itemCount: allMsg.length,
                      itemBuilder: (_, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Text(
                                allMsg[index].time,
                                style: TextStyle(color: blackText),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: Container(
                                margin: allMsg[index].isMe == true
                                    ? EdgeInsets.fromLTRB(8, 20, 100, 0)
                                    : EdgeInsets.fromLTRB(100, 20, 8, 0),
                                height: 50,
                                width: 230,
                                decoration: BoxDecoration(
                                  color: allMsg[index].isMe == true
                                      ? Color(0xff323043)
                                      : Color(0xff3A85EB),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        allMsg[index].msg,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Container(
                                        child: lastIndex == index
                                            ? Icon(
                                                Icons.check,
                                                size: 10,
                                                color: Colors.greenAccent,
                                              )
                                            : Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.check,
                                                    size: 10,
                                                    color: Colors.greenAccent,
                                                  ),
                                                  Icon(
                                                    Icons.check,
                                                    size: 10,
                                                    color: Colors.greenAccent,
                                                  )
                                                ],
                                              ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      })),
            ),
            Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.image),
                      color: comColor,
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.add_circle),
                      color: comColor,
                      onPressed: () {}),
                  Expanded(
                      child: TextField(
                    autofocus: true,
                    decoration:
                        InputDecoration.collapsed(hintText: "Type something"),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: comColor,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
