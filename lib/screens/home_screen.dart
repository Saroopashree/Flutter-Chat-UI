import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/widgets/chat_lists.dart';
import 'package:chat_ui/widgets/favorite_contacts.dart';

import '../widgets/category_selector.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          'Chit~Chat',
          style: TextStyle(
            color: Colors.white,
            fontSize: 27.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Monaco',
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          iconSize: 28.0,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            iconSize: 28.0,
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(backgroundImage: AssetImage(currentUser.imageurl), radius: 27.0,),
          )
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
              ),
              height: 150.0,
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),
                  SizedBox(height: 10.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35.0),
                          topRight: Radius.circular(35.0),
                        ),
                      ),
                      height: 150.0,
                      child: ChatList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
