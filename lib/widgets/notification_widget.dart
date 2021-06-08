import 'package:chat_app/utils/colors.dart';
import 'package:flutter/material.dart';

class NotifWidget extends StatefulWidget {
  final String userName;
  final String time;
  final String notType;

  final String userImg;

  const NotifWidget(
      {Key key, this.userName, this.time, this.notType, this.userImg})
      : super(key: key);
  @override
  _NotifWidgetState createState() => _NotifWidgetState();
}

class _NotifWidgetState extends State<NotifWidget> {
  String isAccepted = "Accept";
  String isPayment = " Proceed to Payment";
  //Creating custom Notification type Widget
  // NB: there are different type of notification

  //Friend Request Notification
  _buildReqNotif({String username, String imgUrl, String time}) {
    return InkWell(
      onTap: () {
        setState(() {
          isAccepted = "...";
        });
      },
      child: Container(
          child: Center(
        child: ListTile(
          leading: Container(
            height: 70,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(imgUrl.toString())),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              username,
              style: TextStyle(
                  color: txtColor, fontSize: 20, fontFamily: "MADType"),
            ),
          ),
          subtitle: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildContainer(
                  color1: lightBlueColor,
                  color2: darkBlueColor,
                  btnTxt: isAccepted.toString()),
              _buildContainer(
                  color1: Colors.black12,
                  color2: Colors.black12,
                  btnTxt: "Decline")
            ],
          ),
          trailing: Text(
            time,
            style: TextStyle(fontFamily: "MADType", color: blackText),
          ),
        ),
      )),
    );
  }

  _buildContainer({Color color1, Color color2, String btnTxt}) => Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color1, color2]),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            btnTxt,
            style:
                TextStyle(color: txtColor, fontSize: 18, fontFamily: "MADType"),
          ),
        ),
      ));

  //Payment Request Notification
  _buildPayNotif({String username, String imgUrl, String time}) {
    return Container(
        child: Center(
      child: ListTile(
        leading: Container(
          height: 70,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(imgUrl.toString())),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            username,
            style:
                TextStyle(color: txtColor, fontSize: 20, fontFamily: "MADType"),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: InkWell(
            onTap: () {
              setState(() {
                isPayment = "...";
              });
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient:
                      LinearGradient(colors: [lightBlueColor, darkBlueColor])),
              child: Center(
                child: Text(
                  isPayment.toString(),
                  style: TextStyle(
                      color: txtColor, fontSize: 20, fontFamily: "MADType"),
                ),
              ),
            ),
          ),
        ),
        trailing: Text(
          time,
          style: TextStyle(fontFamily: "MADType", color: blackText),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return Container(
        // color: Colors.white,
        height: height * 0.12,
        child: widget.notType == "friendReq"
            ? _buildReqNotif(
                username: widget.userName,
                imgUrl: widget.userImg,
                time: widget.time)
            : _buildPayNotif(
                username: widget.userName,
                imgUrl: widget.userImg,
                time: widget.time));
  }
}
