import 'package:chat_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String imgUrl;
  final String sender;
  final String message;
  final String lastActive;

  final bool active;

  const CustomListTile(
      {Key key,
      this.imgUrl,
      this.sender,
      this.message,
      this.lastActive,
      this.active})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.10,
      child: ListTile(
        leading: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(imgUrl))),
          child: active == true
              ? Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: darkBlueColor,
                  ),
                )
              : null,
        ),
        title: Text(
          sender,
          style: TextStyle(
              color: txtColor,
              fontWeight: FontWeight.w800,
              fontFamily: "MADType"),
        ),
        subtitle: Text(
          message,
          style: TextStyle(color: blackText, fontFamily: "MADType"),
        ),
        trailing: Text(
          lastActive,
          style: TextStyle(color: blackText, fontFamily: "MADType"),
        ),
      ),
    );
  }
}
