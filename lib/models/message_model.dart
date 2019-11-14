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

final User alex = User(
  id: 7,
  name: 'Alexander',
  imageurl: 'assets/images/alex.jpg',
);

final User andy = User(
  id: 8,
  name: 'Andy',
  imageurl: 'assets/images/andy.jpg',
);

final User beatrice = User(
  id: 9,
  name: 'Beatrice',
  imageurl: 'assets/images/beatrice.jpg',
);

final User brian = User(
  id: 10,
  name: 'Brian',
  imageurl: 'assets/images/brian.jpg',
);

final User violet = User(
  id: 11,
  name: 'Violet',
  imageurl: 'assets/images/violet.jpg',
);

List<User> favorites = [ erica, joshua, brian, steve, wendy, violet ];

List<Message> chats = [
  Message(
    sender: joshua,
    time: '7.02 PM',
    text: 'What\'s up?',
    isLiked: false,
    unRead: true,
  ),
  Message(
    sender: kathy,
    time: '6.47 PM',
    text: 'Had a great time with Jonathan. You missed it!!!',
    isLiked: true,
    unRead: false,
  ),
  Message(
    sender: wendy,
    time: '6.47 PM',
    text: 'Can\'t wait anymore. I\'m going home.',
    isLiked: false,
    unRead: false,
  ),
  Message(
    sender: erica,
    time: '6.16 PM',
    text: 'Everything went well. And as you know Aaron was awarded the entertainer of the year. :p',
    isLiked: true,
    unRead: false,
  ),
  Message(
    sender: brian,
    time: '6.15 PM',
    text: 'Hi there!',
    isLiked: false,
    unRead: true,
  ),
  Message(
    sender: beatrice,
    time: '6.11 PM',
    text: 'I don\'t know what Harry is up to. This is not going great :!',
    isLiked: false,
    unRead: false,
  ),
  Message(
    sender: violet,
    time: '5.53 PM',
    text: 'Reached Beijing. It was an awesome travel. I\'d like to come here with you sometime later',
    isLiked: true,
    unRead: false,
  ),
  Message(
    sender: andy,
    time: '5.29 PM',
    text: 'Hey dude! Come over here. We shall play video games.',
    isLiked: false,
    unRead: true,
  ),
];