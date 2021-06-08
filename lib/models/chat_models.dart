class RecentChat {
  String imgUrl;
  String sender;
  String message;
  String lastActive;
  bool unread;
  bool active;

  RecentChat(
      {this.imgUrl,
      this.sender,
      this.message,
      this.unread,
      this.lastActive,
      this.active});
}

RecentChat keanu = RecentChat(
    imgUrl: "images/john wick.jpeg",
    sender: "John Wick",
    message: "Where's my dog Richie?",
    lastActive: "1m ago",
    active: true,
    unread: false);
RecentChat travis = RecentChat(
    imgUrl: "images/travis.jpeg",
    sender: "Travis Scott",
    message: "Where are you at?",
    lastActive: "50m ago",
    active: false,
    unread: true);
RecentChat andrew = RecentChat(
    imgUrl: "images/male1.jpeg",
    sender: "Andrew Charles",
    message: "Can we meet tommorrow?",
    lastActive: "1d ago",
    active: true,
    unread: false);
RecentChat jacquin = RecentChat(
    imgUrl: "images/male3.jpeg",
    sender: "Jacquees Phoneix",
    message: "How was your day?",
    lastActive: "22h ago",
    active: false,
    unread: true);
RecentChat ashley = RecentChat(
    imgUrl: "images/female2.jpeg",
    sender: "Ashley Rider",
    message: "I think m pregnant",
    lastActive: "5d ago",
    active: false,
    unread: false);
RecentChat mia = RecentChat(
    imgUrl: "images/female1.jpeg",
    sender: "Elena Johnson",
    message: "Did u cum in me?",
    lastActive: "1w ago",
    unread: true,
    active: true);

List<RecentChat> recent = [keanu, travis, andrew, jacquin, ashley, mia];
