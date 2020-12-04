class message {
  String msg;
  String time;
  bool isMe;
  bool isSeen;
  message({this.msg, this.time, this.isMe, this.isSeen});
}

message firstMsg =
    message(msg: "Hi John", time: "Monday 11: 12 AM", isMe: true, isSeen: true);
message sndMsg =
    message(msg: "Hey", time: "Monday 11: 13 AM", isMe: false, isSeen: true);
message thrdMsg =
    message(msg: "Waddup babayaga", time: "", isMe: true, isSeen: true);
message fthtMsg =
    message(msg: "Good and you?", time: "Today", isMe: false, isSeen: true);

List<message> allMsg = [
  firstMsg,
  sndMsg,
  thrdMsg,
  fthtMsg,
];
