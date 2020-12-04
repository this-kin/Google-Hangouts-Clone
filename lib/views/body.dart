import 'package:chat_app/widgets/recent_chat.dart';
import 'package:chat_app/widgets/searchbar.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFieldd(),
          Recent(),
        ],
      ),
    );
  }
}
