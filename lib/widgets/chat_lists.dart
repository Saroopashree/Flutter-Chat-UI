import 'package:flutter/material.dart';

import '../models/message_model.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        final Message chat = chats[index];

        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: chat.unRead ? Colors.red[50] : Colors.amber[50],
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(chat.sender.imageurl),
                    radius: 30.0,
                  ),
                  SizedBox(width: 15.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        chat.sender.name,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      SizedBox(
                        width: 220.0,
                        child: Text(
                          chat.text,
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.0),
                  Column(
                    children: <Widget>[
                      Text(
                        chat.time,
                        style: TextStyle(
                          color: Colors.blueGrey[400],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: chat.unRead ? Colors.red : null,
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 3.0,
                            horizontal: 10.0,
                          ),
                          child: Text(
                            chat.unRead ? 'New' : '',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );

        /*return ListTile(
          leading: CircleAvatar(
            radius: 28.0,
            backgroundImage: AssetImage(chat.sender.imageurl),
          ),
          title: Text(
            '${chat.sender.name}',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            '${chat.text}',
            style: TextStyle(
              fontSize: 16.5,
              color: Colors.grey[700],
              fontWeight: FontWeight.w300,
            ),
            maxLines: 1,
          ),
          trailing: Text(
            '${chat.time}',
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),

        );*/
      },
    );
  }
}
