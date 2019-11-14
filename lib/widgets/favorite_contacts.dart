import 'package:chat_ui/models/message_model.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatefulWidget {
  @override
  _FavoriteContactsState createState() => _FavoriteContactsState();
}

class _FavoriteContactsState extends State<FavoriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Favorites',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blueGrey[700],
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    iconSize: 30.0,
                    color: Colors.blueGrey[700],
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 120.0,
              color: Theme.of(context).accentColor,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                  left: 17.0,
                  top: 14.0,
                ),
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: CircleAvatar(
                            radius: 35.0,
                            backgroundImage:
                                AssetImage(favorites[index].imageurl),
                          ),
                        ),
                        Text(
                          favorites[index].name,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.blueGrey[700],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
