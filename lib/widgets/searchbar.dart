import 'package:chat_app/utils/colors.dart';
import 'package:flutter/material.dart';

class TextFieldd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 50,
      decoration: BoxDecoration(
          color: blackTopping, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(5),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            labelText: "Search Friends"),
      ),
    );
  }
}
