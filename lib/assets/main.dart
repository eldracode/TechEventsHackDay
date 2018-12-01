import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'login with firebase',
      theme: ThemeData(
          // primarySwatch: Colors.black,
          ),
      home: new LoginPage(),
    );
  }
}
