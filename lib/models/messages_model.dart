class message {
  String msg;
  String time;
  String msgType;
  bool isMe;
  bool isSeen;
  message({this.msg, this.time, this.msgType, this.isMe, this.isSeen});
}

message firstMsg = message(
    msg: "Hi John Wick 🖐🖐",
    time: "Monday 11:12 AM",
    isMe: true,
    isSeen: true,
    msgType: "text");
message sndMsg = message(
    msg: "Hey dude wassup",
    time: "Monday 11:13 AM",
    isMe: false,
    isSeen: true,
    msgType: "text");
message thrdMsg = message(
    msg: "is this your dawg? lol 🤣🤣🤣 ",
    time: "",
    isMe: true,
    isSeen: true,
    msgType: "image");
message fthtMsg = message(
    msg: "01:59", time: "", isMe: false, isSeen: true, msgType: "voice");

List<message> allMsg = [
  firstMsg,
  sndMsg,
  thrdMsg,
  fthtMsg,
];
