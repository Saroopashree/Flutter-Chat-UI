import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.amber[50],
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
