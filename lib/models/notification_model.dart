class Notification {
  final String userName;
  final String time;
  final String notType;

  final String userImg;

  Notification({this.userName, this.time, this.notType, this.userImg});
}

Notification firstNotification = Notification(
    userName: "Jesse Quick",
    time: "3m",
    notType: "friendReq",
    userImg: "images/female.jpg");
Notification secondNotification = Notification(
    userName: "Dammy Richie",
    time: "5m",
    notType: "payment",
    userImg: "images/pic.png");
Notification thirdNotification = Notification(
    userName: "Wade Wilson",
    time: "2d",
    notType: "friendReq",
    userImg: "images/female.jpg");
List<Notification> allNotification = [
  firstNotification,
  secondNotification,
  thirdNotification
];
