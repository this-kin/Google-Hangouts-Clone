import 'package:chat_app/utils/colors.dart';
import 'package:chat_app/views/notification.dart';
import 'package:chat_app/widgets/chatScreen.dart';
import 'package:chat_app/widgets/searchbar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  initState() {
    super.initState();
  }

  showOverLay(context) async {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(builder: (BuildContext context) {
      return Positioned(
        top: 50,
        right: 10,
        child: CircleAvatar(
          radius: 10,
          backgroundColor: Colors.red,
          child: Text("3"),
        ),
      );
    });
    overlayState.insert(overlayEntry);
    Future.delayed(Duration(seconds: 3), () {
      overlayEntry.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bkgrdColor,
        title: Text("Chats", style: TextStyle(color: txtColor, fontSize: 30)),
        actions: [
          IconButton(
            icon: Icon(Ionicons.ios_notifications_outline),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return NotificationPage();
              }));
            },
          )
        ],
      ),
      backgroundColor: bkgrdColor,
      body: Container(
        margin: const EdgeInsets.all(0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(17),
              child: SearchBar(),
            ),
            ChatScreen()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              showOverLay(context);
            });
          },
          tooltip: "Add new contact",
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [lightBlueColor, darkBlueColor],
              ),
            ),
            child: Icon(
              FlutterIcons.ios_add_ion,
              color: Colors.white,
            ),
          )),
    );
  }
}
