import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Widget userAvatar(String imgUrl) {
      return Container(
        height: height * 0.20,
        width: width * 0.20,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(imgUrl.toString()))),
      );
    }

    return Container(
      height: height / 10,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            userAvatar("images/travis.jpeg"),
            userAvatar("images/user.jpg")
          ],
        ),
      ),
    );
  }
}
