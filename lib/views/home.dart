import 'package:chat_app/utils/colors.dart';
import 'package:chat_app/views/body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bkgrdColor,
        elevation: 0,
        title: Text(
          "Let's Chat",
          style: TextStyle(fontSize: 25),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border(
                      top: BorderSide(color: comColor),
                      left: BorderSide(color: comColor),
                      right: BorderSide(color: comColor),
                      bottom: BorderSide(color: comColor))),
              child: Center(
                child: IconButton(
                    icon: Icon(
                      Icons.person,
                      color: comColor,
                      size: 22,
                    ),
                    onPressed: () {}),
              ),
            ),
          )
        ],
      ),
      backgroundColor: bkgrdColor,
      body: MyApp(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: comColor,
          child: Icon(
            Icons.person_add,
            color: Colors.white,
          ),
          onPressed: () {}),
    );
  }
}
