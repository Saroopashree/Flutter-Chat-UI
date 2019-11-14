import 'package:chat_ui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unRead;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unRead,
  });
}

final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageurl: 'assets/images/alan.jpg',
);

// Users
final User erica = User(
  id: 1,
  name: 'Erica',
  imageurl: 'assets/images/erica.jpg',
);

final User joshua = User(
  id: 2,
  name: 'Joshua',
  imageurl: 'assets/images/joshua.jpg',
);

final User kathy = User(
  id: 3,
  name: 'Kathy',
  imageurl: 'assets/images/kathy.jpg',
);

final User mathew = User(
  id: 4,
  name: 'Mathew',
  imageurl: 'assets/images/mathew.jpg',
);

final User steve = User(
  id: 5,
  name: 'Steve',
  imageurl: 'assets/images/steve.jpg',
);

final User wendy = User(
  id: 6,
  name: 'Wendy',
  imageurl: 'assets/images/wendy.jpg',
);


List<User> favorites = [ erica, joshua, kathy, steve, wendy ];

List<Message> chats = [
  Message(
    sender: joshua,
    time: '4.30 PM',
    text: 'What\'s up?',
    isLiked: false,
    unRead: true,
  ),
  Message(
    sender: kathy,
    time: '4.42 PM',
    text: 'Had a great time with Jonathan. You missed it!!!',
    isLiked: true,
    unRead: false,
  ),
  Message(
    sender: wendy,
    time: '4.55 PM',
    text: 'Can\'t wait anymore. I\'m going home.',
    isLiked: false,
    unRead: false,
  ),
  Message(
    sender: erica,
    time: '5.53 PM',
    text: 'Everything went well. And as you know Aaron was awarded the entertainer of the year. :p',
    isLiked: false,
    unRead: true,
  ),
];