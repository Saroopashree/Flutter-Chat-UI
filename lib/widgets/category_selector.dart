import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 1;
  final List<String> categories = ['Chats', 'Groups', 'Friends', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25.0,
                horizontal: 20.0,
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontSize: 23.0,
                  color: index == selectedIndex ? Colors.white : Colors.white70,
                  fontWeight: index == selectedIndex ? FontWeight.w600 : FontWeight.w400,
                  letterSpacing: 0.7,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
