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
          )
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          FavoriteContacts(),
        ],
      ),
    );
  }
}
