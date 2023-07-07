import 'package:flutter/material.dart';

final colors = [
  Colors.redAccent,
  Colors.lightGreen,
  Colors.lightBlueAccent,
  Colors.yellowAccent,
  Colors.brown.shade400,
  Colors.pink,
  Colors.purpleAccent,
  Colors.deepOrange,
  Colors.deepPurple
];

const drawerHeader = UserAccountsDrawerHeader(
  margin: EdgeInsets.only(right: 60.0, top: 0.0),
  accountName: Text("UserName"),
  accountEmail: Text("usernsme@gmail.com"),
  currentAccountPicture: CircleAvatar(
    backgroundColor: Colors.amber,
    child: FlutterLogo(
      size: 40.0,
    ),
  ),
  otherAccountsPictures: <Widget>[
    CircleAvatar(
      backgroundColor: Colors.indigo,
      child: Text("A"),
    ),
    CircleAvatar(
      backgroundColor: Colors.indigo,
      child: Text("B"),
    ),
  ],
);
