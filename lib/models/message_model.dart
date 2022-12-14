import './user_model.dart';

class Message {
  final User sender;
  final String avatar;
  final String time;
  final int unreadCount;
  final bool isRead;
  final String text;
  final String icon;

  Message( {
    required this.sender,
    required this.avatar,
    required this.time,
    required this.unreadCount,
    required this.text,
    required this.isRead,
    required this.icon,
  });
}

final List<Message> recentChats = [
  Message(
    sender: addison,
    avatar: 'assets/images/Addison.jpg',
    time: '01:25',
    text: "typing...",
    unreadCount: 1,
    isRead: true,
    icon: 'assets/icons/phoneicon.png',
  ),
  Message(
    sender: jason,
    avatar: 'assets/images/Jason.jpg',
    time: '12:46',
    text: "Will I be in it?",
    unreadCount: 1,
    isRead: true,
    icon: 'assets/icons/phoneicon.png',
  ),
  Message(
    sender: deanna,
    avatar: 'assets/images/Deanna.jpg',
    time: '05:26',
    text: "That's so cute.",
    unreadCount: 3,
    isRead: true,
    icon: 'assets/icons/phoneicon.png',
  ),
  Message(
      sender: nathan,
      avatar: 'assets/images/Nathan.jpg',
      time: '12:45',
      text: "Let me see what I can do.",
      unreadCount: 2,
      isRead: false,
      icon: 'assets/icons/phoneicon.png',
      ),
];

final List<Message> allChats = [
  Message(
    sender: virgil,
    avatar: 'assets/images/Virgil.jpg',
    time: '12:59',
    text: "No! I just wanted",
    unreadCount: 3,
    isRead: true,
    icon: 'assets/icons/phoneicon.png',
  ),
  Message(
    sender: stanley,
    avatar: 'assets/images/Stanley.jpg',
    time: '10:41',
    text: "You did what?",
    unreadCount: 1,
    isRead: false,
    icon: 'assets/icons/phoneicon.png',
  ),
  Message(
    sender: leslie,
    avatar: 'assets/images/Leslie.jpg',
    time: '05:51',
    unreadCount: 4,
    isRead: true,
    text: "just signed up for a tutor",
    icon: 'assets/icons/phoneicon.png',
  ),
  Message(
    sender: judd,
    avatar: 'assets/images/Judd.jpg',
    time: '10:16',
    text: "May I ask you something?",
    unreadCount: 2,
    isRead: false,
    icon: 'assets/icons/phoneicon.png',
  ),
];

final List<Message> messages = [
  Message(
    sender: addison,
    time: '12:09 AM',
    avatar: addison.avatar,
    text: "...",
    unreadCount: 1,
    isRead: true,
    icon: 'assets/icons/phoneicon.png',
  ),
  Message(
    sender: currentUser,
    time: '12:05 AM',
    isRead: true,
    text: "I???m going home.",
    avatar: '',
    unreadCount: 1,
    icon: 'assets/icons/phoneicon.png',
  ),
  Message(
    sender: currentUser,
    time: '12:05 AM',
    isRead: true,
    text: "See, I was right, this doesn???t interest me.",
    avatar: '',
    unreadCount: 1,
       icon: 'assets/icons/phoneicon.png',
  ),
  Message(
    sender: addison,
    time: '11:58 PM',
    avatar: addison.avatar,
    text: "I sign your paychecks.",
    isRead: false,
    unreadCount: 1,
       icon: 'assets/icons/phoneicon.png',
  ),
  Message(
    sender: addison,
    time: '11:58 PM',
    avatar: addison.avatar,
    text: "You think we have nothing to talk about?",
    isRead: false,
    unreadCount: 1,
       icon: 'assets/icons/phoneicon.png',
  ),
  Message(
    sender: currentUser,
    time: '11:45 PM',
    isRead: true,
    text:
        "Well, because I had no intention of being in your office. 20 minutes ago",
    avatar: '',
    unreadCount: 1,
       icon: 'assets/icons/phoneicon.png',
  ),
  Message(
    sender: addison,
    time: '11:30 PM',
    avatar: addison.avatar,
    text: "I was expecting you in my office 20 minutes ago.",
    isRead: false,
    unreadCount: 1,
       icon: 'assets/icons/phoneicon.png',
  ),
];
